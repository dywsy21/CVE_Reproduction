import os
import re
import subprocess

def preprocess_header_file(file_path):
    # Use gcc or clang to preprocess the file
    result = subprocess.run(['gcc', '-E', '-P', '-fpreprocessed', file_path], stdout=subprocess.PIPE, text=True, stderr=subprocess.DEVNULL)
    return result.stdout

def parse_header_files_with_definitions(directory, blacklist=[]):
    api_functions = []
    # Regex to match function declarations
    header_pattern = re.compile(r'^\s*([\w\s\*\(\)_]+)\s+(\w+)\s*\((.*)\)\s*;')

    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.h'):
                preprocessed_content = preprocess_header_file(os.path.join(root, file))
                lines = preprocessed_content.splitlines()
                current_line = ""

                for line in lines:
                    current_line += line.strip()
                    if current_line.endswith(';'):
                        match = header_pattern.match(current_line)
                        if match and not 'hidden' in current_line and not 'typedef' in current_line:
                            return_type = match.group(1).strip()
                            function_name = match.group(2).strip()
                            parameters = match.group(3).strip()
                            definition = f"{return_type} {function_name}({parameters});"
                            banned = False
                            for blacklisted in blacklist:
                                if function_name.startswith(blacklisted):
                                    banned = True
                                    break
                            if not banned:
                                api_functions.append(definition)
                        current_line = ""
    return api_functions

def check_exported_symbols(library_file_dir):
    exported_symbols = []
    for root, _, files in os.walk(library_file_dir):
        for file in files:
            if '.so' in file:
                library_file = os.path.join(root, file)
                result = subprocess.run(['nm', '-D', library_file], stdout=subprocess.PIPE, text=True)
                for line in result.stdout.splitlines():
                    if ' T ' in line:  # 'T' indicates a text (code) section
                        exported_symbols.append(line.split()[-1])
    return exported_symbols

def main(install_dir, blacklist, outfile):
    header_dir = install_dir + '/include' if not install_dir.endswith('/') else install_dir + 'include'
    library_file = install_dir + '/lib' if not install_dir.endswith('/') else install_dir + 'lib'
    api_functions_with_definitions = parse_header_files_with_definitions(header_dir, blacklist)
    exported_symbols = check_exported_symbols(library_file)

    public_apis = []
    for api in api_functions_with_definitions:
        for symbol in exported_symbols:
            if symbol in api:
                public_apis.append(api)
                break

    with open(outfile, 'w') as f:
        for api in public_apis:
            f.write(api + '\n')


if __name__ == '__main__':
    install_dir = '/home/wsy/CVE_Reproduction/CVE-2023-6350_Reproduction/gd_install'
    main(install_dir,['avif'], outfile='public_apis.txt')

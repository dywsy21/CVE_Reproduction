# Install script for directory: /home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/libheif

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/plugins/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libheif.so.1.17.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libheif.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/libheif.so.1.17.5"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/libheif.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libheif.so.1.17.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libheif.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/libheif.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libheif" TYPE FILE FILES
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/libheif/heif.h"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/libheif/heif_cxx.h"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/libheif/heif_plugin.h"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/libheif/heif_properties.h"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/libheif/heif_regions.h"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/heif_version.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif/libheif-config.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif/libheif-config.cmake"
         "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/CMakeFiles/Export/5cd8613eea38798f9c35b1a25e1b106b/libheif-config.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif/libheif-config-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif/libheif-config.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif" TYPE FILE FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/CMakeFiles/Export/5cd8613eea38798f9c35b1a25e1b106b/libheif-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif" TYPE FILE FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/CMakeFiles/Export/5cd8613eea38798f9c35b1a25e1b106b/libheif-config-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libheif" TYPE FILE FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/libheif-1.17.5/build/libheif/libheif-config-version.cmake")
endif()


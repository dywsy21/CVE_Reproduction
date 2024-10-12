# Install script for directory: /home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/src/app

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper"
         RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install/lib:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/app/jasper")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper"
         OLD_RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/libjasper:/usr/local/lib:"
         NEW_RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install/lib:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/jasper")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/app/CMakeFiles/jasper.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo"
         RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install/lib:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/app/imginfo")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo"
         OLD_RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/libjasper:/usr/local/lib:"
         NEW_RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install/lib:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imginfo")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/app/CMakeFiles/imginfo.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp"
         RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install/lib:/usr/local/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/app/imgcmp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp"
         OLD_RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/libjasper:/usr/local/lib:"
         NEW_RPATH "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/install/lib:/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/imgcmp")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/tmp_cmake/build/src/app/CMakeFiles/imgcmp.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/src/app/jasper.1"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/src/app/imginfo.1"
    "/home/wsy/CVE_Reproduction/libheif_to_jasper_Reproduction/jasper-4.2.4/src/app/imgcmp.1"
    )
endif()


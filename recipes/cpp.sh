#! /usr/bin/env bash

function generate_xcode_project() {
    local project_name=$1

cat <<EOF
cmake_minimum_required(VERSION 2.8)
project($project_name)
set(NAME $project_name) 
set(CMAKE_C_FLAGS "-x objective-c")

set(HEADER_FILES 
    ./uhdplayerengine/HelloWorld/HelloWorld/AppDelegate.h
)
set(SOURCE_FILES 
    ./kata.cpp
)
set(XIB_FILE
    ./uhdplayerengine/HelloWorld/HelloWorld/Base.lproj/MainMenu.xib
)

add_executable(
    ${NAME}
    MACOSX_BUNDLE
    ${HEADER_FILES}
    ${SOURCE_FILES}
    ${XIB_FILE}
)

set_source_files_properties(
    ${XIB_FILE}
    PROPERTIES
    MACOSX_PACKAGE_LOCATION
    Resources
)

set_target_properties(
    ${NAME}
    PROPERTIES
    MACOSX_BUNDLE_INFO_PLIST
    ./$project_name-Info.plist
)

target_link_libraries(${NAME}
    "-framework Cocoa"
    "-framework AppKit"
    "-framework CoreData"
    "-framework Foundation"
)
EOF
}

generate_xcode_project "foo"



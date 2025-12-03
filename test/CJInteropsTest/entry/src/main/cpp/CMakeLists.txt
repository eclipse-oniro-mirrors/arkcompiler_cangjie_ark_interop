cmake_minimum_required(VERSION 3.5.0)

project(load_ark_module)

set(NATIVERENDER_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

if (DEFINED PACKAGE_FINE_FILE)
    include(${PACKAGE_FIND_FILE})
endif()

include_directories(${NATIVERENDER_ROOT_OATH}
    ${NATIVERENDER_ROOT_PATH}/include
)

add_library(entry_c SHARED napi_init.cpp)

target_link_libraries(entry_c PRIVATE libace_napi.z.so hilog_ndk.z)
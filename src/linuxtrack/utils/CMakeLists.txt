project(linuxtrack-utils C)
set(LINUXTRACK-UTILS ${PROJECT_NAME} CACHE INTERNAL "LINUXTRACK-UTILS")

set(LINUXTRACK_UTILS_H
    utils.h
    ipc_utils.h

    config_test.h # TODO: Refactor out.
)

set(LINUXTRACK_UTILS_S
    utils.c
    ipc_utils.c
)

set(LINUXTRACK_UTILS_C
    ${LINUXTRACK_UTILS_H}
    ${LINUXTRACK_UTILS_S}
)

add_library(${PROJECT_NAME} STATIC
    ${LINUXTRACK_UTILS_C}
)

target_include_directories(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

set_target_properties(${PROJECT_NAME} PROPERTIES
    LINKER_LANGUAGE C
)

target_compile_features(${PROJECT_NAME} PUBLIC
    
)

target_compile_options(${PROJECT_NAME} PUBLIC
    ${LIBLINUXTRACK_FLAGS} ${LINUXFLAGS}
)

target_compile_definitions(${PROJECT_NAME} PUBLIC
    LIB_PATH="${PROJECT_BINARY_DIR}"
)

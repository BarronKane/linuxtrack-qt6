project(xlinuxtrack9 C)
set(XLINUXTRACK9 ${PROJECT_NAME} CACHE INTERNAL "XLINUXTRACK9")

set(XLINUXTRACK9_H
)

set(XLINUXTRACK9_S
    xlinuxtrack9.c
)

set(XLINUXTRACK9_C
    ${XLINUXTRACK9_H}
    ${XLINUXTRACK9_S}
)

add_library(${PROJECT_NAME} STATIC
    ${XLINUXTRACK9_C}
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

#target_compile_definitions(${PROJECT_NAME} PUBLIC
#    LIB_PATH="${PROJECT_BINARY_DIR}"
#)

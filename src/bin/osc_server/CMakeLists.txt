project(osc_server C)
set(OSC_SERVER ${PROJECT_NAME} CACHE INTERNAL "OSC_SERVER")

set(OSC_SERVER_H
)

set(OSC_SERVER_S
    osc_server.c
)

set(OSC_SERVER_C
    ${OSC_SERVER_H}
    ${OSC_SERVER_S}
)

add_executable(${PROJECT_NAME}
    ${OSC_SERVER_C}
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

project(joy C)
set(JOY ${PROJECT_NAME} CACHE INTERNAL "JOY")

set(JOY_H
)

set(JOY_S
    joy.c
)

set(JOY_C
    ${JOY_H}
    ${JOY_S}
)

add_library(${PROJECT_NAME} STATIC
    ${JOY_C}
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

target_link_libraries(${PROJECT_NAME}
    ltr
)

#target_compile_definitions(${PROJECT_NAME} PUBLIC
#    LIB_PATH="${PROJECT_BINARY_DIR}"
#)

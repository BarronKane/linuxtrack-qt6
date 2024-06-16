project(macwc C)
set(MACWC ${PROJECT_NAME} CACHE INTERNAL "MACWC")

set(MACWC_H
)

set(MACWC_S
    macwebcam_driver.c
)

set(MACWC_C
    ${MACWC_H}
    ${MACWC_S}
)

add_library(${PROJECT_NAME} STATIC
    ${MACWC_C}
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

target_link_libraries(${PROJECT_NAME} PRIVATE
    ltr
)

#target_compile_definitions(${PROJECT_NAME} PUBLIC
#    LIB_PATH="${PROJECT_BINARY_DIR}"
#)

project(p3e C)
set(P3E ${PROJECT_NAME} CACHE INTERNAL "P3E")

set(P3E_H
    ps3eye_driver.h
)

set(P3E_S
    ps3eye_driver.c
)

set(P3E_C
    ${P3E_H}
    ${P3E_S}
)

add_library(${PROJECT_NAME} STATIC
    ${P3E_C}
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
    usb1
)

#target_compile_definitions(${PROJECT_NAME} PUBLIC
#    LIB_PATH="${PROJECT_BINARY_DIR}"
#)

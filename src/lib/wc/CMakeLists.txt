project(wc C)
set(WC ${PROJECT_NAME} CACHE INTERNAL "WC")

set(WC_H
    webcam_driver.h
)

set(WC_S
    webcam_driver.c
)

set(WC_C
    ${WC_H}
    ${WC_S}
)

add_library(${PROJECT_NAME} STATIC
    ${WC_C}
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

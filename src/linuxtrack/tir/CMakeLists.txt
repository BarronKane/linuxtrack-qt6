project(tir C)
set(TIR ${PROJECT_NAME} CACHE INTERNAL "TIR")

set(TIR_H
    sn4_com.h
    tir_driver.h
    tir_hw.h
    tir_img.h
    tir.h
)

set(TIR_S
    tir_driver.c
    tir_hw.c
    tir_img.c
)

set(TIR_C
    ${TIR_H}
    ${TIR_S}
)

add_library(${PROJECT_NAME} STATIC
    ${TIR_C}
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

project(fakeusb C)
set(FAKEUSB ${PROJECT_NAME} CACHE INTERNAL "FAKEUSB")

set(FAKEUSB_H
    tir_model.h
)

set(FAKEUSB_S
    fakeusb.c
    sn3_model.cpp
    sn4_model.cpp
    tir_model.cpp
    tir4_model.cpp
)

set(FAKEUSB_C
    ${FAKEUSB_H}
    ${FAKEUSB_S}
)

add_library(${PROJECT_NAME} STATIC
    ${FAKEUSB_C}
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
    ${LIBFAKEUSB_FLAGS} ${LINUXFLAGS}
)

target_link_libraries(${PROJECT_NAME}
    usb1
    ltr
)
project(usb1 C)
set(USB1 ${PROJECT_NAME} CACHE INTERNAL "USB1")

set(USB1_H
    usb_ifc.h
)

set(USB1_S
    libusb_ifc.c
)

set(USB1_C
    ${USB1_H}
    ${USB1_S}
)

add_library(${PROJECT_NAME} STATIC
    ${USB1_C}
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
    ${LIBUSB1_FLAGS} ${LINUXFLAGS}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    libusb::libusb
    ltr
)
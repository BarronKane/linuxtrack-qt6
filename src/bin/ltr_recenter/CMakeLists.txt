project(ltr_recenter C)
set(LTR_RECENTER ${PROJECT_NAME} CACHE INTERNAL "LTR_RECENTER")

set(LTR_RECENTER_H
)

set(LTR_RECENTER_S
    ltr_recenter.c
)

set(LTR_RECENTER_C
    ${LTR_RECENTER_H}
    ${LTR_RECENTER_S}
)

add_executable(${PROJECT_NAME}
    ${LTR_RECENTER_C}
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

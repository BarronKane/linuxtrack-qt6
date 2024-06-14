project(ltr_server1 C)
set(LTR_SERVER1 ${PROJECT_NAME} CACHE INTERNAL "LTR_SERVER1")

set(LTR_SERVER1_H
    ltr_srv_comm.h
    ltr_srv_master.h
    ltr_srv_slave.h
)

set(LTR_SERVER1_S
    ltr_server1.c
    ltr_srv_comm.c
    ltr_srv_master.cpp
    ltr_srv_slave.c
)

set(LTR_SERVER1_C
    ${LTR_SERVER1_H}
    ${LTR_SERVER1_S}
)

add_executable(${PROJECT_NAME}
    ${LTR_SERVER1_C}
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

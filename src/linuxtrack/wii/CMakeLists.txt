project(wii C)
set(WII ${PROJECT_NAME} CACHE INTERNAL "WII")

set(WII_H
    wiimote_driver.h
)

set(WII_S
    wiimote_driver.c
)

set(WII_C
    ${WII_H}
    ${WII_S}
)

add_library(${PROJECT_NAME} STATIC
    ${WII_C}
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

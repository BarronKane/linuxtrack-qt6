project(ft CXX)
set(FT ${PROJECT_NAME} CACHE INTERNAL "FT")

set(FT_H
    facetrack.h
)

set(FT_S
    facetrack.cpp
)

set(FT_C
    ${FT_H}
    ${FT_S}
)

add_library(${PROJECT_NAME} STATIC
    ${FT_C}
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

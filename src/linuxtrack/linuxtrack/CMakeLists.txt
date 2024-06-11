project(linuxtrack C)
set(LINUXTRACK ${PROJECT_NAME} CACHE INTERNAL "LINUXTRACK")

set(LINUXTRACK_H
    linuxtrack.h 
    ltlib.h
)

set(LINUXTRACK_S
    ltlib.c
)

set(LINUXTRACK_C
    ${LINUXTRACK_H}
    ${LINUXTRACK_S}
)

add_library(${PROJECT_NAME} STATIC
    ${LINUXTRACK_C}
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

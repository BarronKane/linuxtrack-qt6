project(ltr_extractor C)
set(LTR_EXTRACTOR ${PROJECT_NAME} CACHE INTERNAL "LTR_EXTRACTOR")

set(LTR_EXTRACTOR_H
    digest.h
    extract.h
    game_data.h
)

set(LTR_EXTRACTOR_S
    digest.c
    extract.c
    game_data.c
    hashing.c
)

set(LTR_EXTRACTOR_C
    ${LTR_EXTRACTOR_H}
    ${LTR_EXTRACTOR_S}
)

add_library(${PROJECT_NAME} STATIC
    ${LTR_EXTRACTOR_C}
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

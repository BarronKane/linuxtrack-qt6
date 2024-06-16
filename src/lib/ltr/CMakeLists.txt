project(ltr C)
set(LTR ${PROJECT_NAME} CACHE INTERNAL "LTR")

# pref_bison.ypp pref_bison.hpp pref_flex.lpp

set(LTR_H
    cal.c
    list.c
    dyn_load.c
    math_utils.c
    pose.c
    pref.cpp
    pref_global.c
    #utils.c
    image_process.c
    tracking.c
    ltlib_int.c
    spline.c
    axis.c
    wii_driver_prefs.c
    tir_driver_prefs.c
    wc_driver_prefs.c
    #ipc_utils.c
    com_proc.c
    wii_com.c
    joy_driver_prefs.c
    ps3_prefs.c
    runloop.c

    pref_bison.cpp
    pref_flex.cpp
)

set(LTR_S
    cal.h
    list.h
    dyn_load.h
    math_utils.h
    pose.h
    pref.hpp
    pref.h
    pref_global.h
    #utils.h
    image_process.h
    tracking.h
    ltlib_int.h
    spline.h 
    axis.h
    wii_driver_prefs.h
    tir_driver_prefs.h
    wc_driver_prefs.h
    #ipc_utils.h
    com_proc.h
    wii_com.h 
    joy_driver_prefs.h
    ps3_prefs.h
    runloop.h

    pref_bison.hpp
    pref_flex.h

    pathconfig.h
)

set(LTR_C
    ${LTR_H}
    ${LTR_S}
)

add_library(${PROJECT_NAME} STATIC
    ${LTR_C}
)

target_include_directories(${PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

#set_target_properties(${PROJECT_NAME})

target_compile_features(${PROJECT_NAME} PUBLIC
    
)

target_compile_options(${PROJECT_NAME} PUBLIC
    ${LIBLINUXTRACK_FLAGS} ${LINUXFLAGS}
)

target_link_libraries(${PROJECT_NAME}
    linuxtrack-utils
    linuxtrack
)

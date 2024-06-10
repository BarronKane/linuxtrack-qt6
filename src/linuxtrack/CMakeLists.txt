project(linuxtrack)
set(LINUXTRACK ${PROJECT_NAME} CACHE INTERNAL "LINUXTRACK")

# For now all I'm going to try to do is simply replicate, instruction-by-instrution,
# all of the tasks implemented in autotools. 

if(CMAKE_SYSTEM_NAME STREQAL "Darwin")
    set(SLEOPARD_LDFLAG "-headerpad_max_install_names")
    set(DARWINFLAGS "-undefined dynamic_lookup")
    set(SYSFLAGS "-DIBM=0 -DAPL=1 -DLIN=0")
    # If ltr_server is not linked against CoreFoundation, loading libusb-1.0 would
    # cause SIG_TRAP, since CoreFoundation expects the init takes place
    # in the main thread. Linking ltr_server against CoreFoundation solves that.
    set(LTR_SERVER_FLAGS "-framework CoreFoundation")
    set(QMAKE_FLAGS "-spec macx-g++")
    set(LIBLINUXTRACK_FLAGS "-fpic -fPIC -arch i386 -arch x86_64")
    set(XLINUXTRACK_CFLAGS "-arch i386 -arch x86_64")
    set(XLINUXTRACK_LDFLAGS "-Wl,-no_arch_warnings -arch i386 -arch x86_64")
    set(LINUXFLAGS "")
    set(LINUXLDFLAGS "")
    set(ltr_pipe_CPPFLAGS "")
    set(FT_LDFLAGS "")
else()
    # TODO: These two will need reduxing for CMake.
    set(LINUXFLAGS "-DLIB_PATH=\"$(pkglibdir)/\"")
    set(LINUXLDLFAGS "-Wl,-rpath,$(pkglibdir)")

    set(SYSFLAGS "-DIBM=0 -DAPL=0 -DLIN=1")
    set(QMAKE_FLAGS "-spec linux-g++")
    set(LIBLINUXTRACK_FLAGS "-fpic -fPIC")
    set(LTR_SERVER_FLAGS "")
    set(XLINUXTRACK_CFLAGS "")
    set(XLINUXTRACK_LDFLAGS "-L/lib32 -L/usr/lib32 -Wl,--no-warn-search-mismatch")
    set(ltr_pipe_CPPFLAGS "-DLINUX")

    # TODO: This may also need reduxing.
    set(FT_LDFLAGS "-Wl,-rpath,$(libdir)")
endif()


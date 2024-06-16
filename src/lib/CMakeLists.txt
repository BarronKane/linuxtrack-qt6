project(linuxtrack-libs)
set(LINUXTRACK-LIBS ${PROJECT_NAME} CACHE INTERNAL "LINUXTRACK-LIBS")

add_subdirectory_with_folder("linuxtrack" fakeusb)
add_subdirectory_with_folder("linuxtrack" ft)
add_subdirectory_with_folder("linuxtrack" joy)
add_subdirectory_with_folder("linuxtrack" linuxtrack)
add_subdirectory_with_folder("linuxtrack" ltr)
add_subdirectory_with_folder("linuxtrack" macwc)
add_subdirectory_with_folder("linuxtrack" macwii)
add_subdirectory_with_folder("linuxtrack" p3e)
add_subdirectory_with_folder("linuxtrack" tir)
add_subdirectory_with_folder("linuxtrack" usb1)
add_subdirectory_with_folder("linuxtrack" utils)
add_subdirectory_with_folder("linuxtrack" wc)

# TODO: cwiid library.
#add_subdirectory_with_folder("linuxtrack" wii)

# TODO: Xplane SDK.
#add_subdirectory_with_folder("linuxtrack" xlinuxtrack9)




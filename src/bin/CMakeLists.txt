project(linuxtrack-bin)
set(LINUXTRACK-BIN ${PROJECT_NAME} CACHE INTERNAL "LINUXTRACK-BIN")

add_subdirectory_with_folder("linuxtrack" ltr_extractor)
add_subdirectory_with_folder("linuxtrack" ltr_recenter)
add_subdirectory_with_folder("linuxtrack" ltr_server1)
add_subdirectory_with_folder("linuxtrack" osc_server)


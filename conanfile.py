from conan import ConanFile
from conan.tools.cmake import CMakeToolchain, CMake, cmake_layout, CMakeDeps
from conan.tools.build import check_max_cppstd, check_min_cppstd

class linuxtrackRecipe(ConanFile):
    name = "linuxtrack"
    version = "1.0"

    settings = "os", "compiler", "build_type", "arch"
    options = {"shared": [True, False]}
    default_options = {"shared": False}

    def validate(self):
        check_min_cppstd(self, "11")
        check_max_cppstd(self, "20")

    # zstd feature for linux as the qttools recipe still looks for it even when disabled.
    def requirements(self):
        self.requires("libusb/1.0.26")
        self.requires("xkbcommon/1.6.0", override=True) # Version resolutions between OpenCV and QT.
        self.requires("libpng/1.6.43", override=True)   # Version resolutions between OpenCV and QT.
        self.requires("opencv/4.8.1", options={"with_ffmpeg": False}) # FFMPEG requires pulseaudio which is failing to build.
        self.requires("qt/6.7.1", options={"with_zstd": True})

    def layout(self):
        cmake_layout(self)

    def generate(self):
        deps = CMakeDeps(self)
        deps.generate()
        tc = CMakeToolchain(self)
        tc.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        cmake = CMake(self)
        cmake.install()


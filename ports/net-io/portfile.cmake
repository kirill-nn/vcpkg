# header-only library

vcpkg_from_git(
        OUT_SOURCE_PATH SOURCE_PATH
        URL https://github.com/kirill-nn/net-io.git
        REF bcec3039c2c5f38916e9e6c2728a941e2e4971ac
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
# header-only library

vcpkg_from_git(
        OUT_SOURCE_PATH SOURCE_PATH
        URL git@github.com:kirill-nn/net-io.git
        REF e48b759c681e95b36544ab217020baf3749d2763
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
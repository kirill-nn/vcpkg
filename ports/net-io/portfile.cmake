# header-only library

vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO kirill-nn/net-io
        REF "${VERSION}"
        SHA512 5376dc2b97aa72ba6671861512f4e29882507c9b4a028c46cca6d7f0966a1fe56c29a99fb5b713a85c0cda1abf654442b6d93be254f490f2388f5aabaefe7942
        HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
# header-only library

vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO kirill-nn/net-io
        REF "${VERSION}"
        SHA512 5cdf9867b4d9ab664c4ff75df3c25b2dc49910fc4e684ad56096b986aa241d561a628f2018e37a079e029da940cdb664f2c964f8d751d060211a85d78bf8aedf
        HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
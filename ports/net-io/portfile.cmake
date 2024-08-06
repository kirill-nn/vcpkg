# header-only library

vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO kirill-nn/net-io
        REF "${VERSION}"
        SHA512 d205a7e6930c73ab9f740d56005cb9821d6e41887b7653a7478808b4481eeb56f17ef1527bea856dbeb9609ac2f0394905ee2482a6b55a5cff7d3d8863b9d2d4
        HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
# header-only library

vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO kirill-nn/net-io
        REF "${VERSION}"
        SHA512 188a5951b6db4dcd5e4d74d8f5ce40d84fc783b238c47360c9efb5e27899007685f33cde64f9d367340974fc290a10bb554cdf5d40686c15fdbb7334b760900a
        HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
add_library(spdlog STATIC IMPORTED)
set_target_properties(spdlog PROPERTIES 
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/Lib/spdlog.lib"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/Include"
    IMPORTED_CONFIGURATIONS "Debug;Release")
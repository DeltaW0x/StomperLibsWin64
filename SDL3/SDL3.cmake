add_library(SDL3 SHARED IMPORTED)
set_target_properties(SDL3 PROPERTIES 
    IMPORTED_IMPLIB "${CMAKE_CURRENT_LIST_DIR}/Lib/SDL3.lib"
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/Bin/SDL3.dll"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/Include"
    IMPORTED_CONFIGURATIONS "Debug;Release")
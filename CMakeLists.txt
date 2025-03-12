cmake_minimum_required(VERSION 3.10)
project(json_validator)

set(CMAKE_CXX_STANDARD 17)

include(cmake/CPM.cmake)

CPMAddPackage(
  NAME nlohmann_json
  VERSION 3.11.3
  GITHUB_REPOSITORY "nlohmann/json"
  GIT_TAG "v3.11.3"
  OPTIONS "JSON_BuildTests OFF"
          "JSON_MultipleHeaders ON"
)

CPMAddPackage(
  NAME nlohmann_json_schema_validator
  VERSION 2.3.0
  GITHUB_REPOSITORY "pboettch/json-schema-validator"
  GIT_TAG "2.3.0"
  OPTIONS "JSON_VALIDATOR_BUILD_TESTS OFF"
          "JSON_VALIDATOR_BUILD_EXAMPLES OFF"
          "JSON_VALIDATOR_INSTALL OFF"
)

add_library(json_process json_process.cpp)
target_link_libraries(json_process
  PUBLIC
    nlohmann_json::nlohmann_json 
    nlohmann_json_schema_validator
)

add_executable(main main.cpp)
target_link_libraries(main 
  PRIVATE 
  json_process
)
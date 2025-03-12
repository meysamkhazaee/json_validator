include("/home/meysam/workspace/codes/personal/json_validator/cmake/CPM.cmake")
CPMAddPackage("NAME;nlohmann_json_schema_validator;VERSION;2.3.0;GITHUB_REPOSITORY;pboettch/json-schema-validator;GIT_TAG;2.3.0;OPTIONS;JSON_VALIDATOR_BUILD_TESTS OFF;JSON_VALIDATOR_BUILD_EXAMPLES OFF;JSON_VALIDATOR_INSTALL OFF")
set(nlohmann_json_schema_validator_FOUND TRUE)
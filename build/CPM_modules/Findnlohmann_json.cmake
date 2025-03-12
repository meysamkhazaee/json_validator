include("/home/meysam/workspace/codes/personal/json_validator/cmake/CPM.cmake")
CPMAddPackage("NAME;nlohmann_json;VERSION;3.11.3;GITHUB_REPOSITORY;nlohmann/json;GIT_TAG;v3.11.3;OPTIONS;JSON_BuildTests OFF;JSON_MultipleHeaders ON")
set(nlohmann_json_FOUND TRUE)
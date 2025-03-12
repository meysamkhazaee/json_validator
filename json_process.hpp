#pragma once

#include <iostream>
#include <fstream>
#include <nlohmann/json-schema.hpp>

using nlohmann::json;
using nlohmann::json_schema::json_validator;

class custom_error_handler : public nlohmann::json_schema::basic_error_handler {
public:
    void error(const json::json_pointer& pointer, const json& instance, const std::string& message) override;
    bool has_errors() const;

private:
    bool errors_found = false;
};

class json_process {
public:
    bool json_validate(const nlohmann::json& input_json, const std::string& input_schema);
    bool load_from_file(const std::string& file_path, json& out_json);
};
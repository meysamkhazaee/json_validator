#include "json_process.hpp"

void custom_error_handler::error(const json::json_pointer& pointer, const json& instance, const std::string& message) 
{
    std::cerr << "Schema validation error at " << pointer.to_string()
              << " value: " << instance.dump()
              << " message: " << message << std::endl;
    errors_found = true;
}

bool custom_error_handler::has_errors() const 
{
    return errors_found;
}

bool json_process::json_validate(const nlohmann::json& input_json, const std::string& input_schema) 
{
    json_validator validator;
    custom_error_handler error_handler;

    try 
    {
        validator.set_root_schema(json::parse(input_schema));
        validator.validate(input_json, error_handler);

        return !error_handler.has_errors();
    } 
    catch (const std::exception &e) 
    {
        std::cerr << "Validation of schema failed: " << e.what() << "\n";
        return false;
    }
}

bool json_process::load_from_file(const std::string& file_path, json& out_json) 
{
    std::ifstream file(file_path);
    if (!file) 
    {
        std::cerr << "Error: Unable to open file " << file_path << std::endl;
        return false;
    }

    try 
    {
        file >> out_json;
        return true;
    } 
    catch (const std::exception& e) 
    {
        std::cerr << "Error: Failed to parse JSON in file " << file_path << ": " << e.what() << std::endl;
        return false;
    }
}

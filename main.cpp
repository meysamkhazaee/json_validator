#include <iostream>
#include <fstream>
#include "json_process.hpp"
#include <nlohmann/json.hpp>

int main() 
{
    json_process processor;

    // Define a simple JSON schema
    const std::string input_schema = R"(
        {
            "type": "object",
            "properties": {
                "phone_number": {
                    "type": "string",
                    "pattern": "^98\\d+(-98\\d+)?"
                },
                "type": {
                    "type": "string",
                    "enum": ["src", "dst", "src-dst"]
                },
                "color": {
                    "type": "string",
                    "enum": ["white", "black"]
                }
            },
            "required": ["phone_number", "type", "color"]
        }
    )";

    std::string json_str = R"(
        {
            "phone_number": "098123456789",
            "type": "src",
            "color": "white"
        }
    )";

    try 
    {
        nlohmann::json json_input = nlohmann::json::parse(json_str);

        if (processor.json_validate(json_input, input_schema)) 
        {
            std::cout << "JSON is valid!" << std::endl;
        } 
        else 
        {
            std::cerr << "Invalid JSON format or missing fields!" << std::endl;
        }
    } 
    catch (const nlohmann::json::parse_error& e) 
    {
        std::cerr << "JSON Parsing error: " << e.what() << std::endl;
    }

    return 0;
}

# JSON Validator  

## Overview  
This project is a **JSON Schema Validator** built in C++ using:  
- [nlohmann/json](https://github.com/nlohmann/json) for JSON parsing  
- [json-schema-validator](https://github.com/pboettch/json-schema-validator) for schema validation  
- CMake for project management  

The validator ensures that JSON files conform to a predefined schema using **nlohmann/json-schema**.

---

## Features  
✅ Validate JSON objects against a schema  
✅ Load JSON data from a file  
✅ Report validation errors with detailed messages  

---

## Requirements  

- **C++17 or later**  
- **CMake 3.10 or later**  
- **Git**  
- **A compiler that supports C++17** (GCC, Clang, MSVC)  

---

## Installation  

### **1. Clone the Repository**  
```sh
git clone https://github.com/meysamkhazaee/json_validator.git
cd json_validator
```

### **2. Build the Project**  
```sh
mkdir build && cd build
cmake ..
make
```

---

## Usage  

### **Run the Validator**  
```sh
./main
```

### **Example JSON Schema**
```json
{
    "$schema": "http://json-schema.org/draft-07/schema#",
    "type": "object",
    "properties": {
        "name": { "type": "string" },
        "age": { "type": "integer", "minimum": 0 }
    },
    "required": ["name", "age"]
}
```

### **Example JSON File**
```json
{
    "name": "John Doe",
    "age": 30
}
```

### **Example Output**  
If the JSON is valid:  
```
Valid JSON: Passed schema validation.
```
If the JSON is invalid:  
```
Schema validation error at /age value: null message: Required property is missing
Invalid JSON: Failed schema validation.
```

---

## Project Structure  

```
json_validator/
│── CMakeLists.txt            # CMake build configuration
│── cmake/CPM.cmake           # Dependency manager
│── src/
│   ├── main.cpp              # Entry point of the application
│   ├── json_process.cpp      # JSON validation logic
│   ├── json_process.hpp      # Header file for validation logic
│── test/
│   ├── test_data.json        # Sample JSON file for testing
│── README.md                 # Documentation
```

---

## Contributing  

1. Fork the repository  
2. Create a new branch: `git checkout -b feature-branch`  
3. Commit your changes: `git commit -m "Add new feature"`  
4. Push to the branch: `git push origin feature-branch`  
5. Open a Pull Request  

---

## License  
This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for more details.  

---

## Author  
👨‍💻 **Your Name**  
📧 your.email@example.com  
🔗 [GitHub](https://github.com/your-profile)  

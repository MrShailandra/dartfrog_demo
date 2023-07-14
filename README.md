# DartFrog Demo

DartFrog Demo is a server-side coding project implemented using Flutter and the Dart SDK. This project utilizes the Dart Frog package for server-side development and MongoDB for the database. It also incorporates JWT token authentication for secure access to the server's responses and includes functionality for uploading and storing profile photos on the server.

## Installation

To run this project, follow these steps:

1. Install MongoDB on your system.

2. Update the DB Constant in the code to establish a successful connection with your MongoDB database.

3. Open the `pubspec.yaml` file in your project's root directory.

4. Add the following dependencies to the `pubspec.yaml` file:

'''yaml
dependencies:
  dart_frog: ^0.3.0
  dart_jsonwebtoken: ^2.8.2
  dartz: ^0.10.1
  encrypt: ^5.0.1
  mime: ^1.0.4
  mongo_dart: ^0.9.1
  uuid: ^3.0.7

models:
  path: lib/models/

dev_dependencies:
  build_runner: ^2.4.6
  freezed: ^2.3.5
  json_serializable: ^6.7.1
  mocktail: ^0.3.0
  test: ^1.19.2
  very_good_analysis: ^5.0.0
'''

## Usage

Please refer to the documentation or code comments for detailed usage instructions and examples on how to utilize the features implemented in this project.

## API Documentation

You can find the API documentation for this project here.

Alternatively, you can use the following button to directly run the collection in Postman:

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/19221890-45c6f856-3760-46e6-b96d-838166505b74?action=collection%2Ffork&source=rip_markdown&collection-url=entityId%3D19221890-45c6f856-3760-46e6-b96d-838166505b74%26entityType%3Dcollection%26workspaceId%3Dc2c54415-b3af-4c44-a419-2d447a9808ce)

## Contribution

Contributions to this project are welcome. If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE). Please see the [LICENSE](LICENSE) file for more information.

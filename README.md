# flutter_api_starter

Sample Flutter project meant to be used for rapid prototyping with web services. Sample data used comes from the [NHL API](https://github.com/erunion/sport-api-specifications/tree/master/nhl). 

## Dependencies Used

- [Dio](https://pub.dev/packages/dio)
- [Build Runner](https://pub.dev/packages/build_runner)
- [JSON Serializable](https://pub.dev/packages/json_serializable)
- [JSON Annotation](https://pub.dev/packages/json_annotation)

## Getting Started

- After basic app has been created update the structure within the lib directory to create directories for models, network, and respository
- Inside of the network directory create an api_service file and add basic Dio functionality
- Inside of the repository directory add a file for the domain of the endpoints to store all related queries ex. `nhl_repository.dart`
- Inside of the models directory you will create models for any of the objects you want to strongly type from your responses.

### Created Strongly Typed Models

Assuming we have the following node response from an endpoint, these are the steps to create a strongly typed data model to reflect the data

    "person" : {
      "id" : 8477946,
      "fullName" : "Dylan Larkin",
      "link" : "/api/v1/people/8477946"
    },

Inside of the models folder (or subfolder) create a Dart file named person.dart in addition crate a Dart file called `person.g.dart`
Within the person.dart file add the link to the `.g.dart` file and define the attributes you'd like to type. In addition add factory call to the toJson function that will be generated by `json_serializable`

    import 'package:json_annotation/json_annotation.dart';
    part 'person.g.dart';

    @JsonSerializable()
    class Person {
      /// The generated code assumes these values exist in JSON.
      final int id;
      final String fullName;
      final String link;

      Person({required this.id, required this.fullName, required this.link});

      factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
    }

Once the code has been created in the class file run the command `flutter pub run build_runner build --delete-conflicting-outputs` to automatically generate the code to parse that object

import 'dart:math';

import 'package:fpdart/fpdart.dart';

enum OperatingSystem {
  macOS(true, true, message: "I am macOS"),
  windows(false, true, message: "I am windows"),
  linux(false, true, message: "I am linux");

  final String? _message;

  const OperatingSystem(this.canBuildForIos, this.canBuildForAndroid,
      {required String? message})
      : _message = message;

  final bool canBuildForIos;
  final bool canBuildForAndroid;

  bool get isBestOperatingSystemForFlutterDevelopment =>
      canBuildForIos && canBuildForAndroid;

  (bool, String) best() {
    return (true, "I am Monu.");
  }

  display() {
    print("I am display");

    switch (this) {
      case OperatingSystem.macOS:
        print("I am macOS");
        break;
      case OperatingSystem.windows:
        print("I am windows");
        break;
      case OperatingSystem.linux:
        print("I am linux");
        break;
    }
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void display() {
    print("I am display");
  }
}

class Student extends Person {
  String schoolName;

  Student(this.schoolName, String name, int age) : super(name, age);

  @override
  void display() {
    print("I am student, And my name is $name");
  }
}

class Teacher extends Person {
  String schoolName;

  Teacher(this.schoolName, String name, int age) : super(name, age);

  @override
  void display() {
    print("I am Teacher , And my name is $name");
  }
}

main() {
  OperatingSystem macOS = OperatingSystem.linux;

  @Deprecated("Use macOS instead")
  Person person = Student("DPS", "Monu", 20);

  //person.display();

  /// Create an instance of [Some]
  final option = Option.of(10);

  /// Create an instance of [None]
  final none = Option<int>.none();

  /// Map [int] to [String]
  final map = option.getOrElse(() => -1);

//  print(option.toEither(() => print("Take Love")));

  Either<String, Option> getData() {
    var _data = Option.of(Random().nextInt(10));

    print("Option Value ${_data.toNullable()}");

    if (_data.toNullable()! % 2 == 0) {
      return Right(Option.of("Even"));
    } else {
      return Left("Odd");
    }
  }

  //getData().fold((l) => print(l), (r) => print(r));

  //IO example

  IO<int> getNumber() {
    return IO(() => Random().nextInt(10));
  }

  IO<int> getNumber2() {
    return IO(() => Random().nextInt(10));
  }

  IO<int> getNumber3() {
    return IO(() => Random().nextInt(10));
  }

//  print(getNumber().);
}

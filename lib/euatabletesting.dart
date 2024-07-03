import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person1 = const Person(name: 'Prashant', age: 21);
          Person person2 = const Person(name: 'Prashant', age: 21);
          print(person1.hashCode.toString());
          print(person1 == person2);
          print(person1 == person1);
        },
        child: const Icon(Icons.abc_outlined),
      ),
    );
  }
}

// use to cheak euability by euatable operator
class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  // create by equatable dependency
  @override
  List<Object?> get props => [name, age];

// create by self
  // @override
  // bool operator ==(Object other) {
  //   return identical(this, other) ||
  //       other is Person &&
  //           runtimeType == other.runtimeType &&
  //           name == other.name &&
  //           age == other.age;
  // }

  // @override
  // int get hasCode => name.hashCode ^ age.hashCode;
}

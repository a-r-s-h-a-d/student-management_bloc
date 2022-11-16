import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_details/core/constants.dart';
import 'package:student_details/domain/model/data_model.dart';

class ScreenStudentDetails extends StatelessWidget {
  const ScreenStudentDetails({Key? key, required this.student})
      : super(key: key);
  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details', style: kstylesheet),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          width: double.infinity,
          child: ListView(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: FileImage(File(student.image)),
                  radius: 80,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Text('Name : ${student.name}',
                      style: const TextStyle(fontSize: 18, fontFamily: "acme")),
                  Text('Age : ${student.age}',
                      style: const TextStyle(fontSize: 18, fontFamily: "acme")),
                  Text('Email :${student.email}',
                      style: const TextStyle(fontSize: 18, fontFamily: "acme")),
                  Text('Contacts:${student.contacts}',
                      style: const TextStyle(fontSize: 18, fontFamily: "acme"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

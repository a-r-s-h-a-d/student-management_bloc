import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_details/core/constants.dart';
import 'package:student_details/domain/model/data_model.dart';
import 'package:student_details/presentation/add_students/screen_add_students.dart';
import 'package:student_details/presentation/edit_student/screen_edit_student.dart';
import 'package:student_details/presentation/search_students/search_students.dart';
import 'package:student_details/presentation/student_details/screen_student_details.dart';

class ScreenViewStudents extends StatelessWidget {
  ScreenViewStudents({Key? key}) : super(key: key);
  final Box<StudentModel> studentBox = Hive.box<StudentModel>('student_db');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'View Students',
            style: kstylesheet,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchStudents()),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: ValueListenableBuilder(
          valueListenable: studentBox.listenable(),
          builder: (BuildContext context, Box<StudentModel> studentBox,
              Widget? child) {
            return studentBox.isEmpty
                ? const Center(
                    child: Text(
                      'The List is Empty',
                      style: kstylesheet,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      final keys = studentBox.keys.toList()[index];
                      final studentList = studentBox.get(keys);
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return ScreenStudentDetails(
                                student: studentList!,
                              );
                            }),
                          );
                        },
                        leading: CircleAvatar(
                          backgroundImage: FileImage(File(studentList!.image)),
                        ),
                        title: Text(
                          studentList.name,
                          style: kstylesheet,
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        EditStudent(
                                      student: studentList,
                                      studentKey: keys,
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.edit,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                showDeletedAlertBox(context, studentList);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: studentBox.length);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const ScreenAddStudents();
                },
              ),
            );
          },
          tooltip: 'Add Student',
          child: const Icon(Icons.add),
        ));
  }
}

void showDeletedAlertBox(BuildContext context, StudentModel student) {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          content: const Text(
            "Do You Want to delete this?",
            style: kstylesheet,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'No',
                    style: kstylesheet,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      student.delete();
                      Navigator.pop(ctx);
                    },
                    child: const Text(
                      'Yes',
                      style: kstylesheet,
                    ))
              ],
            )
          ],
        );
      });
}

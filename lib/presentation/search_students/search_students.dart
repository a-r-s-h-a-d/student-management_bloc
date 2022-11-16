import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_details/application/search_students.dart/searchstudent_bloc.dart';
import 'package:student_details/core/constants.dart';
import 'package:student_details/domain/model/data_model.dart';
import 'package:student_details/presentation/student_details/screen_student_details.dart';

// ignore: must_be_immutable
class SearchStudents extends StatelessWidget {
  SearchStudents({Key? key}) : super(key: key);
  final _searchController = TextEditingController();

  List<StudentModel> studentList =
      Hive.box<StudentModel>('student_db').values.toList();
  late List<StudentModel> searchResults = List<StudentModel>.from(studentList);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchstudentBloc>(context).add(const InitialState());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Students", style: kstylesheet),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextFormField(
            controller: _searchController,
            onChanged: (value) {
              BlocProvider.of<SearchstudentBloc>(context).add(
                SearchDone(searchValue: value),
              );
            },
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                hintText: "Search here",
                hintStyle: kstylesheet),
          ),
          BlocBuilder<SearchstudentBloc, SearchstudentState>(
            builder: (context, state) {
              return Expanded(
                child: (state.searchResults.isNotEmpty)
                    ? ListView.separated(
                        itemBuilder: (context, index) {
                          final data = state.searchResults[index];
                          return ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return ScreenStudentDetails(
                                    student: data,
                                  );
                                }),
                              );
                            },
                            leading: CircleAvatar(
                              backgroundImage: FileImage(
                                  File(state.searchResults[index].image)),
                            ),
                            title: Text(
                              state.searchResults[index].name,
                              style: kstylesheet,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: state.searchResults.length)
                    : const Center(child: Text("The name is not found")),
              );
            },
          )
        ]),
      ),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_details/domain/model/data_model.dart';

part 'addstudents_event.dart';
part 'addstudents_state.dart';
part 'addstudents_bloc.freezed.dart';

class AddstudentsBloc extends Bloc<AddstudentsEvent, AddstudentsState> {
  AddstudentsBloc() : super(AddstudentsState.initial()) {
    on<AddStudentstoDataBase>(
      (event, emit) async {
        Box<StudentModel> studentBox = Hive.box<StudentModel>('student_db');
        await studentBox.add(event.student);
      },
    );
    on<changeProfile>((event, emit) {
      final student = StudentModel(
        name: state.student.name,
        age: state.student.age,
        email: state.student.email,
        contacts: state.student.contacts,
        image: event.image,
      );
      return emit(AddstudentsState(student: student));
    });
  }
}

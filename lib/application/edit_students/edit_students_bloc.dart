import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_details/domain/model/data_model.dart';

part 'edit_students_event.dart';
part 'edit_students_state.dart';
part 'edit_students_bloc.freezed.dart';

class EditStudentsBloc extends Bloc<EditStudentsEvent, EditStudentsState> {
  EditStudentsBloc() : super(EditStudentsState.initial()) {
    on<UpdateProfile>((event, emit) {
      final student = StudentModel(
          name: state.student.name,
          age: state.student.age,
          email: state.student.email,
          contacts: state.student.contacts,
          image: event.image);
      return emit(EditStudentsState(student: student));
    });
    on<AddEditedContenttoDatabase>((event, emit) async {
      Box<StudentModel> studentBox = Hive.box<StudentModel>('student_db');
      await studentBox.put(event.key, event.student);
    });
  }
}

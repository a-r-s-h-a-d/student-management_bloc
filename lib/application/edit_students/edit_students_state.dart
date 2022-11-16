part of 'edit_students_bloc.dart';

@freezed
class EditStudentsState with _$EditStudentsState {
  const factory EditStudentsState({required StudentModel student}) =
      _EditStudentsState;
  factory EditStudentsState.initial() => EditStudentsState(
        student: StudentModel(
          name: '',
          age: '',
          email: '',
          contacts: '',
          image: '',
        ),
      );
}

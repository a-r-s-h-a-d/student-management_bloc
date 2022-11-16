part of 'addstudents_bloc.dart';

@freezed
class AddstudentsState with _$AddstudentsState {
  factory AddstudentsState({required StudentModel student}) = _AddstudentsState;
  factory AddstudentsState.initial() => AddstudentsState(
        student: StudentModel(
          name: '',
          age: '',
          contacts: '',
          email: '',
          image: '',
        ),
      );
}

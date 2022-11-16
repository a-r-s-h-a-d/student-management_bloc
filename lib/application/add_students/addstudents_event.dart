part of 'addstudents_bloc.dart';

@freezed
class AddstudentsEvent with _$AddstudentsEvent {
  const factory AddstudentsEvent.addStudentstoDataBase(
      {required StudentModel student}) = AddStudentstoDataBase;
  factory AddstudentsEvent.changeProfile({required String image}) =
      changeProfile;
}

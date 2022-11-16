part of 'edit_students_bloc.dart';

@freezed
class EditStudentsEvent with _$EditStudentsEvent {
  const factory EditStudentsEvent.updateProfile({required String image}) =
      UpdateProfile;
  factory EditStudentsEvent.addEditedContenttoDatabase(
      {required int key,
      required StudentModel student}) = AddEditedContenttoDatabase;
}

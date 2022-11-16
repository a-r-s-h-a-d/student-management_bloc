part of 'searchstudent_bloc.dart';

@freezed
class SearchstudentState with _$SearchstudentState {
  const factory SearchstudentState({
    required List<StudentModel> studentList,
    required List<StudentModel> searchResults,
  }) = _SearchstudentState;
  factory SearchstudentState.initial() => const SearchstudentState(
        studentList: [],
        searchResults: [],
      );
}

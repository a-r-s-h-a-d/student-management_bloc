part of 'searchstudent_bloc.dart';

@freezed
class SearchstudentEvent with _$SearchstudentEvent {
  const factory SearchstudentEvent.initialState() = InitialState;
  factory SearchstudentEvent.searchDone({required String searchValue}) =
      SearchDone;
}

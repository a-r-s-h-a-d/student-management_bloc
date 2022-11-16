import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_details/domain/model/data_model.dart';

part 'searchstudent_event.dart';
part 'searchstudent_state.dart';
part 'searchstudent_bloc.freezed.dart';

class SearchstudentBloc extends Bloc<SearchstudentEvent, SearchstudentState> {
  SearchstudentBloc() : super(SearchstudentState.initial()) {
    on<InitialState>((event, emit) {
      final Box<StudentModel> studentBox = Hive.box<StudentModel>('student_db');
      List<StudentModel> studentList = studentBox.values.toList();
      List<StudentModel> searchResult = studentBox.values.toList();
      return emit(
        SearchstudentState(
          studentList: studentList,
          searchResults: searchResult,
        ),
      );
    });
    on<SearchDone>((event, emit) {
      List<StudentModel> searchResult = state.studentList;
      emit(
        SearchstudentState(
          studentList: state.studentList,
          searchResults: state.searchResults,
        ),
      );
      searchResult = state.studentList
          .where((element) => element.name
              .toLowerCase()
              .contains(event.searchValue.toLowerCase()))
          .toList();
      emit(SearchstudentState(
          studentList: state.studentList, searchResults: searchResult));
    });
  }
}

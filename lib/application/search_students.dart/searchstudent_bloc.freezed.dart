// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searchstudent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchstudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String searchValue) searchDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String searchValue)? searchDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String searchValue)? searchDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(SearchDone value) searchDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(SearchDone value)? searchDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(SearchDone value)? searchDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchstudentEventCopyWith<$Res> {
  factory $SearchstudentEventCopyWith(
          SearchstudentEvent value, $Res Function(SearchstudentEvent) then) =
      _$SearchstudentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchstudentEventCopyWithImpl<$Res>
    implements $SearchstudentEventCopyWith<$Res> {
  _$SearchstudentEventCopyWithImpl(this._value, this._then);

  final SearchstudentEvent _value;
  // ignore: unused_field
  final $Res Function(SearchstudentEvent) _then;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$SearchstudentEventCopyWithImpl<$Res>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, (v) => _then(v as _$InitialState));

  @override
  _$InitialState get _value => super._value as _$InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'SearchstudentEvent.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String searchValue) searchDone,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String searchValue)? searchDone,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String searchValue)? searchDone,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(SearchDone value) searchDone,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(SearchDone value)? searchDone,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(SearchDone value)? searchDone,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements SearchstudentEvent {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$SearchDoneCopyWith<$Res> {
  factory _$$SearchDoneCopyWith(
          _$SearchDone value, $Res Function(_$SearchDone) then) =
      __$$SearchDoneCopyWithImpl<$Res>;
  $Res call({String searchValue});
}

/// @nodoc
class __$$SearchDoneCopyWithImpl<$Res>
    extends _$SearchstudentEventCopyWithImpl<$Res>
    implements _$$SearchDoneCopyWith<$Res> {
  __$$SearchDoneCopyWithImpl(
      _$SearchDone _value, $Res Function(_$SearchDone) _then)
      : super(_value, (v) => _then(v as _$SearchDone));

  @override
  _$SearchDone get _value => super._value as _$SearchDone;

  @override
  $Res call({
    Object? searchValue = freezed,
  }) {
    return _then(_$SearchDone(
      searchValue: searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchDone implements SearchDone {
  _$SearchDone({required this.searchValue});

  @override
  final String searchValue;

  @override
  String toString() {
    return 'SearchstudentEvent.searchDone(searchValue: $searchValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDone &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchValue));

  @JsonKey(ignore: true)
  @override
  _$$SearchDoneCopyWith<_$SearchDone> get copyWith =>
      __$$SearchDoneCopyWithImpl<_$SearchDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(String searchValue) searchDone,
  }) {
    return searchDone(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String searchValue)? searchDone,
  }) {
    return searchDone?.call(searchValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(String searchValue)? searchDone,
    required TResult orElse(),
  }) {
    if (searchDone != null) {
      return searchDone(searchValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(SearchDone value) searchDone,
  }) {
    return searchDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(SearchDone value)? searchDone,
  }) {
    return searchDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(SearchDone value)? searchDone,
    required TResult orElse(),
  }) {
    if (searchDone != null) {
      return searchDone(this);
    }
    return orElse();
  }
}

abstract class SearchDone implements SearchstudentEvent {
  factory SearchDone({required final String searchValue}) = _$SearchDone;

  String get searchValue;
  @JsonKey(ignore: true)
  _$$SearchDoneCopyWith<_$SearchDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchstudentState {
  List<StudentModel> get studentList => throw _privateConstructorUsedError;
  List<StudentModel> get searchResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchstudentStateCopyWith<SearchstudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchstudentStateCopyWith<$Res> {
  factory $SearchstudentStateCopyWith(
          SearchstudentState value, $Res Function(SearchstudentState) then) =
      _$SearchstudentStateCopyWithImpl<$Res>;
  $Res call({List<StudentModel> studentList, List<StudentModel> searchResults});
}

/// @nodoc
class _$SearchstudentStateCopyWithImpl<$Res>
    implements $SearchstudentStateCopyWith<$Res> {
  _$SearchstudentStateCopyWithImpl(this._value, this._then);

  final SearchstudentState _value;
  // ignore: unused_field
  final $Res Function(SearchstudentState) _then;

  @override
  $Res call({
    Object? studentList = freezed,
    Object? searchResults = freezed,
  }) {
    return _then(_value.copyWith(
      studentList: studentList == freezed
          ? _value.studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchstudentStateCopyWith<$Res>
    implements $SearchstudentStateCopyWith<$Res> {
  factory _$$_SearchstudentStateCopyWith(_$_SearchstudentState value,
          $Res Function(_$_SearchstudentState) then) =
      __$$_SearchstudentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StudentModel> studentList, List<StudentModel> searchResults});
}

/// @nodoc
class __$$_SearchstudentStateCopyWithImpl<$Res>
    extends _$SearchstudentStateCopyWithImpl<$Res>
    implements _$$_SearchstudentStateCopyWith<$Res> {
  __$$_SearchstudentStateCopyWithImpl(
      _$_SearchstudentState _value, $Res Function(_$_SearchstudentState) _then)
      : super(_value, (v) => _then(v as _$_SearchstudentState));

  @override
  _$_SearchstudentState get _value => super._value as _$_SearchstudentState;

  @override
  $Res call({
    Object? studentList = freezed,
    Object? searchResults = freezed,
  }) {
    return _then(_$_SearchstudentState(
      studentList: studentList == freezed
          ? _value._studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
      searchResults: searchResults == freezed
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<StudentModel>,
    ));
  }
}

/// @nodoc

class _$_SearchstudentState implements _SearchstudentState {
  const _$_SearchstudentState(
      {required final List<StudentModel> studentList,
      required final List<StudentModel> searchResults})
      : _studentList = studentList,
        _searchResults = searchResults;

  final List<StudentModel> _studentList;
  @override
  List<StudentModel> get studentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentList);
  }

  final List<StudentModel> _searchResults;
  @override
  List<StudentModel> get searchResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString() {
    return 'SearchstudentState(studentList: $studentList, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchstudentState &&
            const DeepCollectionEquality()
                .equals(other._studentList, _studentList) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_studentList),
      const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  _$$_SearchstudentStateCopyWith<_$_SearchstudentState> get copyWith =>
      __$$_SearchstudentStateCopyWithImpl<_$_SearchstudentState>(
          this, _$identity);
}

abstract class _SearchstudentState implements SearchstudentState {
  const factory _SearchstudentState(
      {required final List<StudentModel> studentList,
      required final List<StudentModel> searchResults}) = _$_SearchstudentState;

  @override
  List<StudentModel> get studentList;
  @override
  List<StudentModel> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$$_SearchstudentStateCopyWith<_$_SearchstudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

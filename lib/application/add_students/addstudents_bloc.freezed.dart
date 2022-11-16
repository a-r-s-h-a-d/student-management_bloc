// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addstudents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddstudentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel student) addStudentstoDataBase,
    required TResult Function(String image) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel student)? addStudentstoDataBase,
    TResult Function(String image)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel student)? addStudentstoDataBase,
    TResult Function(String image)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentstoDataBase value)
        addStudentstoDataBase,
    required TResult Function(changeProfile value) changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudentstoDataBase value)? addStudentstoDataBase,
    TResult Function(changeProfile value)? changeProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentstoDataBase value)? addStudentstoDataBase,
    TResult Function(changeProfile value)? changeProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddstudentsEventCopyWith<$Res> {
  factory $AddstudentsEventCopyWith(
          AddstudentsEvent value, $Res Function(AddstudentsEvent) then) =
      _$AddstudentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddstudentsEventCopyWithImpl<$Res>
    implements $AddstudentsEventCopyWith<$Res> {
  _$AddstudentsEventCopyWithImpl(this._value, this._then);

  final AddstudentsEvent _value;
  // ignore: unused_field
  final $Res Function(AddstudentsEvent) _then;
}

/// @nodoc
abstract class _$$AddStudentstoDataBaseCopyWith<$Res> {
  factory _$$AddStudentstoDataBaseCopyWith(_$AddStudentstoDataBase value,
          $Res Function(_$AddStudentstoDataBase) then) =
      __$$AddStudentstoDataBaseCopyWithImpl<$Res>;
  $Res call({StudentModel student});
}

/// @nodoc
class __$$AddStudentstoDataBaseCopyWithImpl<$Res>
    extends _$AddstudentsEventCopyWithImpl<$Res>
    implements _$$AddStudentstoDataBaseCopyWith<$Res> {
  __$$AddStudentstoDataBaseCopyWithImpl(_$AddStudentstoDataBase _value,
      $Res Function(_$AddStudentstoDataBase) _then)
      : super(_value, (v) => _then(v as _$AddStudentstoDataBase));

  @override
  _$AddStudentstoDataBase get _value => super._value as _$AddStudentstoDataBase;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_$AddStudentstoDataBase(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddStudentstoDataBase implements AddStudentstoDataBase {
  const _$AddStudentstoDataBase({required this.student});

  @override
  final StudentModel student;

  @override
  String toString() {
    return 'AddstudentsEvent.addStudentstoDataBase(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudentstoDataBase &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(student));

  @JsonKey(ignore: true)
  @override
  _$$AddStudentstoDataBaseCopyWith<_$AddStudentstoDataBase> get copyWith =>
      __$$AddStudentstoDataBaseCopyWithImpl<_$AddStudentstoDataBase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel student) addStudentstoDataBase,
    required TResult Function(String image) changeProfile,
  }) {
    return addStudentstoDataBase(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel student)? addStudentstoDataBase,
    TResult Function(String image)? changeProfile,
  }) {
    return addStudentstoDataBase?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel student)? addStudentstoDataBase,
    TResult Function(String image)? changeProfile,
    required TResult orElse(),
  }) {
    if (addStudentstoDataBase != null) {
      return addStudentstoDataBase(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentstoDataBase value)
        addStudentstoDataBase,
    required TResult Function(changeProfile value) changeProfile,
  }) {
    return addStudentstoDataBase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudentstoDataBase value)? addStudentstoDataBase,
    TResult Function(changeProfile value)? changeProfile,
  }) {
    return addStudentstoDataBase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentstoDataBase value)? addStudentstoDataBase,
    TResult Function(changeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (addStudentstoDataBase != null) {
      return addStudentstoDataBase(this);
    }
    return orElse();
  }
}

abstract class AddStudentstoDataBase implements AddstudentsEvent {
  const factory AddStudentstoDataBase({required final StudentModel student}) =
      _$AddStudentstoDataBase;

  StudentModel get student;
  @JsonKey(ignore: true)
  _$$AddStudentstoDataBaseCopyWith<_$AddStudentstoDataBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$changeProfileCopyWith<$Res> {
  factory _$$changeProfileCopyWith(
          _$changeProfile value, $Res Function(_$changeProfile) then) =
      __$$changeProfileCopyWithImpl<$Res>;
  $Res call({String image});
}

/// @nodoc
class __$$changeProfileCopyWithImpl<$Res>
    extends _$AddstudentsEventCopyWithImpl<$Res>
    implements _$$changeProfileCopyWith<$Res> {
  __$$changeProfileCopyWithImpl(
      _$changeProfile _value, $Res Function(_$changeProfile) _then)
      : super(_value, (v) => _then(v as _$changeProfile));

  @override
  _$changeProfile get _value => super._value as _$changeProfile;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$changeProfile(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$changeProfile implements changeProfile {
  _$changeProfile({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'AddstudentsEvent.changeProfile(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeProfile &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$changeProfileCopyWith<_$changeProfile> get copyWith =>
      __$$changeProfileCopyWithImpl<_$changeProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel student) addStudentstoDataBase,
    required TResult Function(String image) changeProfile,
  }) {
    return changeProfile(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel student)? addStudentstoDataBase,
    TResult Function(String image)? changeProfile,
  }) {
    return changeProfile?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel student)? addStudentstoDataBase,
    TResult Function(String image)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudentstoDataBase value)
        addStudentstoDataBase,
    required TResult Function(changeProfile value) changeProfile,
  }) {
    return changeProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudentstoDataBase value)? addStudentstoDataBase,
    TResult Function(changeProfile value)? changeProfile,
  }) {
    return changeProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudentstoDataBase value)? addStudentstoDataBase,
    TResult Function(changeProfile value)? changeProfile,
    required TResult orElse(),
  }) {
    if (changeProfile != null) {
      return changeProfile(this);
    }
    return orElse();
  }
}

abstract class changeProfile implements AddstudentsEvent {
  factory changeProfile({required final String image}) = _$changeProfile;

  String get image;
  @JsonKey(ignore: true)
  _$$changeProfileCopyWith<_$changeProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddstudentsState {
  StudentModel get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddstudentsStateCopyWith<AddstudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddstudentsStateCopyWith<$Res> {
  factory $AddstudentsStateCopyWith(
          AddstudentsState value, $Res Function(AddstudentsState) then) =
      _$AddstudentsStateCopyWithImpl<$Res>;
  $Res call({StudentModel student});
}

/// @nodoc
class _$AddstudentsStateCopyWithImpl<$Res>
    implements $AddstudentsStateCopyWith<$Res> {
  _$AddstudentsStateCopyWithImpl(this._value, this._then);

  final AddstudentsState _value;
  // ignore: unused_field
  final $Res Function(AddstudentsState) _then;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc
abstract class _$$_AddstudentsStateCopyWith<$Res>
    implements $AddstudentsStateCopyWith<$Res> {
  factory _$$_AddstudentsStateCopyWith(
          _$_AddstudentsState value, $Res Function(_$_AddstudentsState) then) =
      __$$_AddstudentsStateCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel student});
}

/// @nodoc
class __$$_AddstudentsStateCopyWithImpl<$Res>
    extends _$AddstudentsStateCopyWithImpl<$Res>
    implements _$$_AddstudentsStateCopyWith<$Res> {
  __$$_AddstudentsStateCopyWithImpl(
      _$_AddstudentsState _value, $Res Function(_$_AddstudentsState) _then)
      : super(_value, (v) => _then(v as _$_AddstudentsState));

  @override
  _$_AddstudentsState get _value => super._value as _$_AddstudentsState;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_$_AddstudentsState(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$_AddstudentsState implements _AddstudentsState {
  _$_AddstudentsState({required this.student});

  @override
  final StudentModel student;

  @override
  String toString() {
    return 'AddstudentsState(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddstudentsState &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(student));

  @JsonKey(ignore: true)
  @override
  _$$_AddstudentsStateCopyWith<_$_AddstudentsState> get copyWith =>
      __$$_AddstudentsStateCopyWithImpl<_$_AddstudentsState>(this, _$identity);
}

abstract class _AddstudentsState implements AddstudentsState {
  factory _AddstudentsState({required final StudentModel student}) =
      _$_AddstudentsState;

  @override
  StudentModel get student;
  @override
  @JsonKey(ignore: true)
  _$$_AddstudentsStateCopyWith<_$_AddstudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

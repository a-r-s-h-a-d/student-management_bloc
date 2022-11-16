// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_students_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditStudentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) updateProfile,
    required TResult Function(int key, StudentModel student)
        addEditedContenttoDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String image)? updateProfile,
    TResult Function(int key, StudentModel student)? addEditedContenttoDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? updateProfile,
    TResult Function(int key, StudentModel student)? addEditedContenttoDatabase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(AddEditedContenttoDatabase value)
        addEditedContenttoDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(AddEditedContenttoDatabase value)?
        addEditedContenttoDatabase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(AddEditedContenttoDatabase value)?
        addEditedContenttoDatabase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStudentsEventCopyWith<$Res> {
  factory $EditStudentsEventCopyWith(
          EditStudentsEvent value, $Res Function(EditStudentsEvent) then) =
      _$EditStudentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditStudentsEventCopyWithImpl<$Res>
    implements $EditStudentsEventCopyWith<$Res> {
  _$EditStudentsEventCopyWithImpl(this._value, this._then);

  final EditStudentsEvent _value;
  // ignore: unused_field
  final $Res Function(EditStudentsEvent) _then;
}

/// @nodoc
abstract class _$$UpdateProfileCopyWith<$Res> {
  factory _$$UpdateProfileCopyWith(
          _$UpdateProfile value, $Res Function(_$UpdateProfile) then) =
      __$$UpdateProfileCopyWithImpl<$Res>;
  $Res call({String image});
}

/// @nodoc
class __$$UpdateProfileCopyWithImpl<$Res>
    extends _$EditStudentsEventCopyWithImpl<$Res>
    implements _$$UpdateProfileCopyWith<$Res> {
  __$$UpdateProfileCopyWithImpl(
      _$UpdateProfile _value, $Res Function(_$UpdateProfile) _then)
      : super(_value, (v) => _then(v as _$UpdateProfile));

  @override
  _$UpdateProfile get _value => super._value as _$UpdateProfile;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$UpdateProfile(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfile implements UpdateProfile {
  const _$UpdateProfile({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'EditStudentsEvent.updateProfile(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfile &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      __$$UpdateProfileCopyWithImpl<_$UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) updateProfile,
    required TResult Function(int key, StudentModel student)
        addEditedContenttoDatabase,
  }) {
    return updateProfile(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String image)? updateProfile,
    TResult Function(int key, StudentModel student)? addEditedContenttoDatabase,
  }) {
    return updateProfile?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? updateProfile,
    TResult Function(int key, StudentModel student)? addEditedContenttoDatabase,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(AddEditedContenttoDatabase value)
        addEditedContenttoDatabase,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(AddEditedContenttoDatabase value)?
        addEditedContenttoDatabase,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(AddEditedContenttoDatabase value)?
        addEditedContenttoDatabase,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements EditStudentsEvent {
  const factory UpdateProfile({required final String image}) = _$UpdateProfile;

  String get image;
  @JsonKey(ignore: true)
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEditedContenttoDatabaseCopyWith<$Res> {
  factory _$$AddEditedContenttoDatabaseCopyWith(
          _$AddEditedContenttoDatabase value,
          $Res Function(_$AddEditedContenttoDatabase) then) =
      __$$AddEditedContenttoDatabaseCopyWithImpl<$Res>;
  $Res call({int key, StudentModel student});
}

/// @nodoc
class __$$AddEditedContenttoDatabaseCopyWithImpl<$Res>
    extends _$EditStudentsEventCopyWithImpl<$Res>
    implements _$$AddEditedContenttoDatabaseCopyWith<$Res> {
  __$$AddEditedContenttoDatabaseCopyWithImpl(
      _$AddEditedContenttoDatabase _value,
      $Res Function(_$AddEditedContenttoDatabase) _then)
      : super(_value, (v) => _then(v as _$AddEditedContenttoDatabase));

  @override
  _$AddEditedContenttoDatabase get _value =>
      super._value as _$AddEditedContenttoDatabase;

  @override
  $Res call({
    Object? key = freezed,
    Object? student = freezed,
  }) {
    return _then(_$AddEditedContenttoDatabase(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$AddEditedContenttoDatabase implements AddEditedContenttoDatabase {
  _$AddEditedContenttoDatabase({required this.key, required this.student});

  @override
  final int key;
  @override
  final StudentModel student;

  @override
  String toString() {
    return 'EditStudentsEvent.addEditedContenttoDatabase(key: $key, student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEditedContenttoDatabase &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(student));

  @JsonKey(ignore: true)
  @override
  _$$AddEditedContenttoDatabaseCopyWith<_$AddEditedContenttoDatabase>
      get copyWith => __$$AddEditedContenttoDatabaseCopyWithImpl<
          _$AddEditedContenttoDatabase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String image) updateProfile,
    required TResult Function(int key, StudentModel student)
        addEditedContenttoDatabase,
  }) {
    return addEditedContenttoDatabase(key, student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String image)? updateProfile,
    TResult Function(int key, StudentModel student)? addEditedContenttoDatabase,
  }) {
    return addEditedContenttoDatabase?.call(key, student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String image)? updateProfile,
    TResult Function(int key, StudentModel student)? addEditedContenttoDatabase,
    required TResult orElse(),
  }) {
    if (addEditedContenttoDatabase != null) {
      return addEditedContenttoDatabase(key, student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProfile value) updateProfile,
    required TResult Function(AddEditedContenttoDatabase value)
        addEditedContenttoDatabase,
  }) {
    return addEditedContenttoDatabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(AddEditedContenttoDatabase value)?
        addEditedContenttoDatabase,
  }) {
    return addEditedContenttoDatabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProfile value)? updateProfile,
    TResult Function(AddEditedContenttoDatabase value)?
        addEditedContenttoDatabase,
    required TResult orElse(),
  }) {
    if (addEditedContenttoDatabase != null) {
      return addEditedContenttoDatabase(this);
    }
    return orElse();
  }
}

abstract class AddEditedContenttoDatabase implements EditStudentsEvent {
  factory AddEditedContenttoDatabase(
      {required final int key,
      required final StudentModel student}) = _$AddEditedContenttoDatabase;

  int get key;
  StudentModel get student;
  @JsonKey(ignore: true)
  _$$AddEditedContenttoDatabaseCopyWith<_$AddEditedContenttoDatabase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditStudentsState {
  StudentModel get student => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditStudentsStateCopyWith<EditStudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStudentsStateCopyWith<$Res> {
  factory $EditStudentsStateCopyWith(
          EditStudentsState value, $Res Function(EditStudentsState) then) =
      _$EditStudentsStateCopyWithImpl<$Res>;
  $Res call({StudentModel student});
}

/// @nodoc
class _$EditStudentsStateCopyWithImpl<$Res>
    implements $EditStudentsStateCopyWith<$Res> {
  _$EditStudentsStateCopyWithImpl(this._value, this._then);

  final EditStudentsState _value;
  // ignore: unused_field
  final $Res Function(EditStudentsState) _then;

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
abstract class _$$_EditStudentsStateCopyWith<$Res>
    implements $EditStudentsStateCopyWith<$Res> {
  factory _$$_EditStudentsStateCopyWith(_$_EditStudentsState value,
          $Res Function(_$_EditStudentsState) then) =
      __$$_EditStudentsStateCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel student});
}

/// @nodoc
class __$$_EditStudentsStateCopyWithImpl<$Res>
    extends _$EditStudentsStateCopyWithImpl<$Res>
    implements _$$_EditStudentsStateCopyWith<$Res> {
  __$$_EditStudentsStateCopyWithImpl(
      _$_EditStudentsState _value, $Res Function(_$_EditStudentsState) _then)
      : super(_value, (v) => _then(v as _$_EditStudentsState));

  @override
  _$_EditStudentsState get _value => super._value as _$_EditStudentsState;

  @override
  $Res call({
    Object? student = freezed,
  }) {
    return _then(_$_EditStudentsState(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$_EditStudentsState implements _EditStudentsState {
  const _$_EditStudentsState({required this.student});

  @override
  final StudentModel student;

  @override
  String toString() {
    return 'EditStudentsState(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditStudentsState &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(student));

  @JsonKey(ignore: true)
  @override
  _$$_EditStudentsStateCopyWith<_$_EditStudentsState> get copyWith =>
      __$$_EditStudentsStateCopyWithImpl<_$_EditStudentsState>(
          this, _$identity);
}

abstract class _EditStudentsState implements EditStudentsState {
  const factory _EditStudentsState({required final StudentModel student}) =
      _$_EditStudentsState;

  @override
  StudentModel get student;
  @override
  @JsonKey(ignore: true)
  _$$_EditStudentsStateCopyWith<_$_EditStudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskResponseEntity {
  String get todoName => throw _privateConstructorUsedError;
  int get todoId => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTaskResponseEntityCopyWith<UpdateTaskResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskResponseEntityCopyWith<$Res> {
  factory $UpdateTaskResponseEntityCopyWith(UpdateTaskResponseEntity value,
          $Res Function(UpdateTaskResponseEntity) then) =
      _$UpdateTaskResponseEntityCopyWithImpl<$Res, UpdateTaskResponseEntity>;
  @useResult
  $Res call({String todoName, int todoId, bool isCompleted, int userId});
}

/// @nodoc
class _$UpdateTaskResponseEntityCopyWithImpl<$Res,
        $Val extends UpdateTaskResponseEntity>
    implements $UpdateTaskResponseEntityCopyWith<$Res> {
  _$UpdateTaskResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? todoId = null,
    Object? isCompleted = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskResponseEntityImplCopyWith<$Res>
    implements $UpdateTaskResponseEntityCopyWith<$Res> {
  factory _$$UpdateTaskResponseEntityImplCopyWith(
          _$UpdateTaskResponseEntityImpl value,
          $Res Function(_$UpdateTaskResponseEntityImpl) then) =
      __$$UpdateTaskResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todoName, int todoId, bool isCompleted, int userId});
}

/// @nodoc
class __$$UpdateTaskResponseEntityImplCopyWithImpl<$Res>
    extends _$UpdateTaskResponseEntityCopyWithImpl<$Res,
        _$UpdateTaskResponseEntityImpl>
    implements _$$UpdateTaskResponseEntityImplCopyWith<$Res> {
  __$$UpdateTaskResponseEntityImplCopyWithImpl(
      _$UpdateTaskResponseEntityImpl _value,
      $Res Function(_$UpdateTaskResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? todoId = null,
    Object? isCompleted = null,
    Object? userId = null,
  }) {
    return _then(_$UpdateTaskResponseEntityImpl(
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateTaskResponseEntityImpl implements _UpdateTaskResponseEntity {
  const _$UpdateTaskResponseEntityImpl(
      {required this.todoName,
      required this.todoId,
      required this.isCompleted,
      required this.userId});

  @override
  final String todoName;
  @override
  final int todoId;
  @override
  final bool isCompleted;
  @override
  final int userId;

  @override
  String toString() {
    return 'UpdateTaskResponseEntity(todoName: $todoName, todoId: $todoId, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskResponseEntityImpl &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, todoName, todoId, isCompleted, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskResponseEntityImplCopyWith<_$UpdateTaskResponseEntityImpl>
      get copyWith => __$$UpdateTaskResponseEntityImplCopyWithImpl<
          _$UpdateTaskResponseEntityImpl>(this, _$identity);
}

abstract class _UpdateTaskResponseEntity implements UpdateTaskResponseEntity {
  const factory _UpdateTaskResponseEntity(
      {required final String todoName,
      required final int todoId,
      required final bool isCompleted,
      required final int userId}) = _$UpdateTaskResponseEntityImpl;

  @override
  String get todoName;
  @override
  int get todoId;
  @override
  bool get isCompleted;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskResponseEntityImplCopyWith<_$UpdateTaskResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

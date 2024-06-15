// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskRequestEntity {
  String get todoId => throw _privateConstructorUsedError;
  String? get todoName => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTaskRequestEntityCopyWith<UpdateTaskRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskRequestEntityCopyWith<$Res> {
  factory $UpdateTaskRequestEntityCopyWith(UpdateTaskRequestEntity value,
          $Res Function(UpdateTaskRequestEntity) then) =
      _$UpdateTaskRequestEntityCopyWithImpl<$Res, UpdateTaskRequestEntity>;
  @useResult
  $Res call(
      {String todoId, String? todoName, bool? isCompleted, String userId});
}

/// @nodoc
class _$UpdateTaskRequestEntityCopyWithImpl<$Res,
        $Val extends UpdateTaskRequestEntity>
    implements $UpdateTaskRequestEntityCopyWith<$Res> {
  _$UpdateTaskRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? todoName = freezed,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      todoName: freezed == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskRequestEntityImplCopyWith<$Res>
    implements $UpdateTaskRequestEntityCopyWith<$Res> {
  factory _$$UpdateTaskRequestEntityImplCopyWith(
          _$UpdateTaskRequestEntityImpl value,
          $Res Function(_$UpdateTaskRequestEntityImpl) then) =
      __$$UpdateTaskRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String todoId, String? todoName, bool? isCompleted, String userId});
}

/// @nodoc
class __$$UpdateTaskRequestEntityImplCopyWithImpl<$Res>
    extends _$UpdateTaskRequestEntityCopyWithImpl<$Res,
        _$UpdateTaskRequestEntityImpl>
    implements _$$UpdateTaskRequestEntityImplCopyWith<$Res> {
  __$$UpdateTaskRequestEntityImplCopyWithImpl(
      _$UpdateTaskRequestEntityImpl _value,
      $Res Function(_$UpdateTaskRequestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? todoName = freezed,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_$UpdateTaskRequestEntityImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      todoName: freezed == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTaskRequestEntityImpl implements _UpdateTaskRequestEntity {
  const _$UpdateTaskRequestEntityImpl(
      {required this.todoId,
      this.todoName,
      this.isCompleted,
      required this.userId});

  @override
  final String todoId;
  @override
  final String? todoName;
  @override
  final bool? isCompleted;
  @override
  final String userId;

  @override
  String toString() {
    return 'UpdateTaskRequestEntity(todoId: $todoId, todoName: $todoName, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskRequestEntityImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, todoId, todoName, isCompleted, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskRequestEntityImplCopyWith<_$UpdateTaskRequestEntityImpl>
      get copyWith => __$$UpdateTaskRequestEntityImplCopyWithImpl<
          _$UpdateTaskRequestEntityImpl>(this, _$identity);
}

abstract class _UpdateTaskRequestEntity implements UpdateTaskRequestEntity {
  const factory _UpdateTaskRequestEntity(
      {required final String todoId,
      final String? todoName,
      final bool? isCompleted,
      required final String userId}) = _$UpdateTaskRequestEntityImpl;

  @override
  String get todoId;
  @override
  String? get todoName;
  @override
  bool? get isCompleted;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskRequestEntityImplCopyWith<_$UpdateTaskRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

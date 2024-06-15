// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskRequestEntity {
  String get todoName => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskRequestEntityCopyWith<AddTaskRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskRequestEntityCopyWith<$Res> {
  factory $AddTaskRequestEntityCopyWith(AddTaskRequestEntity value,
          $Res Function(AddTaskRequestEntity) then) =
      _$AddTaskRequestEntityCopyWithImpl<$Res, AddTaskRequestEntity>;
  @useResult
  $Res call({String todoName, bool? isCompleted, String userId});
}

/// @nodoc
class _$AddTaskRequestEntityCopyWithImpl<$Res,
        $Val extends AddTaskRequestEntity>
    implements $AddTaskRequestEntityCopyWith<$Res> {
  _$AddTaskRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$AddTaskRequestEntityImplCopyWith<$Res>
    implements $AddTaskRequestEntityCopyWith<$Res> {
  factory _$$AddTaskRequestEntityImplCopyWith(_$AddTaskRequestEntityImpl value,
          $Res Function(_$AddTaskRequestEntityImpl) then) =
      __$$AddTaskRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todoName, bool? isCompleted, String userId});
}

/// @nodoc
class __$$AddTaskRequestEntityImplCopyWithImpl<$Res>
    extends _$AddTaskRequestEntityCopyWithImpl<$Res, _$AddTaskRequestEntityImpl>
    implements _$$AddTaskRequestEntityImplCopyWith<$Res> {
  __$$AddTaskRequestEntityImplCopyWithImpl(_$AddTaskRequestEntityImpl _value,
      $Res Function(_$AddTaskRequestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_$AddTaskRequestEntityImpl(
      todoName: null == todoName
          ? _value.todoName
          : todoName // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$AddTaskRequestEntityImpl implements _AddTaskRequestEntity {
  const _$AddTaskRequestEntityImpl(
      {required this.todoName, this.isCompleted = false, required this.userId});

  @override
  final String todoName;
  @override
  @JsonKey()
  final bool? isCompleted;
  @override
  final String userId;

  @override
  String toString() {
    return 'AddTaskRequestEntity(todoName: $todoName, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskRequestEntityImpl &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoName, isCompleted, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskRequestEntityImplCopyWith<_$AddTaskRequestEntityImpl>
      get copyWith =>
          __$$AddTaskRequestEntityImplCopyWithImpl<_$AddTaskRequestEntityImpl>(
              this, _$identity);
}

abstract class _AddTaskRequestEntity implements AddTaskRequestEntity {
  const factory _AddTaskRequestEntity(
      {required final String todoName,
      final bool? isCompleted,
      required final String userId}) = _$AddTaskRequestEntityImpl;

  @override
  String get todoName;
  @override
  bool? get isCompleted;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskRequestEntityImplCopyWith<_$AddTaskRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

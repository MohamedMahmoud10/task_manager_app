// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTaskResponseModel _$UpdateTaskResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateTaskResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskResponseModel {
  @JsonKey(name: 'todo')
  String get todoName => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get todoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTaskResponseModelCopyWith<UpdateTaskResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskResponseModelCopyWith<$Res> {
  factory $UpdateTaskResponseModelCopyWith(UpdateTaskResponseModel value,
          $Res Function(UpdateTaskResponseModel) then) =
      _$UpdateTaskResponseModelCopyWithImpl<$Res, UpdateTaskResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') String todoName,
      @JsonKey(name: 'id') int todoId,
      @JsonKey(name: 'completed') bool isCompleted,
      int userId});
}

/// @nodoc
class _$UpdateTaskResponseModelCopyWithImpl<$Res,
        $Val extends UpdateTaskResponseModel>
    implements $UpdateTaskResponseModelCopyWith<$Res> {
  _$UpdateTaskResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateTaskResponseModelImplCopyWith<$Res>
    implements $UpdateTaskResponseModelCopyWith<$Res> {
  factory _$$UpdateTaskResponseModelImplCopyWith(
          _$UpdateTaskResponseModelImpl value,
          $Res Function(_$UpdateTaskResponseModelImpl) then) =
      __$$UpdateTaskResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') String todoName,
      @JsonKey(name: 'id') int todoId,
      @JsonKey(name: 'completed') bool isCompleted,
      int userId});
}

/// @nodoc
class __$$UpdateTaskResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateTaskResponseModelCopyWithImpl<$Res,
        _$UpdateTaskResponseModelImpl>
    implements _$$UpdateTaskResponseModelImplCopyWith<$Res> {
  __$$UpdateTaskResponseModelImplCopyWithImpl(
      _$UpdateTaskResponseModelImpl _value,
      $Res Function(_$UpdateTaskResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? todoId = null,
    Object? isCompleted = null,
    Object? userId = null,
  }) {
    return _then(_$UpdateTaskResponseModelImpl(
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
@JsonSerializable(createToJson: false)
class _$UpdateTaskResponseModelImpl implements _UpdateTaskResponseModel {
  const _$UpdateTaskResponseModelImpl(
      {@JsonKey(name: 'todo') required this.todoName,
      @JsonKey(name: 'id') required this.todoId,
      @JsonKey(name: 'completed') required this.isCompleted,
      required this.userId});

  factory _$UpdateTaskResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'todo')
  final String todoName;
  @override
  @JsonKey(name: 'id')
  final int todoId;
  @override
  @JsonKey(name: 'completed')
  final bool isCompleted;
  @override
  final int userId;

  @override
  String toString() {
    return 'UpdateTaskResponseModel(todoName: $todoName, todoId: $todoId, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskResponseModelImpl &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, todoName, todoId, isCompleted, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskResponseModelImplCopyWith<_$UpdateTaskResponseModelImpl>
      get copyWith => __$$UpdateTaskResponseModelImplCopyWithImpl<
          _$UpdateTaskResponseModelImpl>(this, _$identity);
}

abstract class _UpdateTaskResponseModel implements UpdateTaskResponseModel {
  const factory _UpdateTaskResponseModel(
      {@JsonKey(name: 'todo') required final String todoName,
      @JsonKey(name: 'id') required final int todoId,
      @JsonKey(name: 'completed') required final bool isCompleted,
      required final int userId}) = _$UpdateTaskResponseModelImpl;

  factory _UpdateTaskResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'todo')
  String get todoName;
  @override
  @JsonKey(name: 'id')
  int get todoId;
  @override
  @JsonKey(name: 'completed')
  bool get isCompleted;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskResponseModelImplCopyWith<_$UpdateTaskResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTaskResponseModel _$AddTaskResponseModelFromJson(Map<String, dynamic> json) {
  return _AddTaskResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddTaskResponseModel {
  @JsonKey(name: 'todo')
  @HiveField(0)
  String get todoName => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  @HiveField(1)
  int get todoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  @HiveField(2)
  bool get isCompleted => throw _privateConstructorUsedError;
  @HiveField(3)
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTaskResponseModelCopyWith<AddTaskResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskResponseModelCopyWith<$Res> {
  factory $AddTaskResponseModelCopyWith(AddTaskResponseModel value,
          $Res Function(AddTaskResponseModel) then) =
      _$AddTaskResponseModelCopyWithImpl<$Res, AddTaskResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') @HiveField(0) String todoName,
      @JsonKey(name: 'id') @HiveField(1) int todoId,
      @JsonKey(name: 'completed') @HiveField(2) bool isCompleted,
      @HiveField(3) int userId});
}

/// @nodoc
class _$AddTaskResponseModelCopyWithImpl<$Res,
        $Val extends AddTaskResponseModel>
    implements $AddTaskResponseModelCopyWith<$Res> {
  _$AddTaskResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddTaskResponseModelImplCopyWith<$Res>
    implements $AddTaskResponseModelCopyWith<$Res> {
  factory _$$AddTaskResponseModelImplCopyWith(_$AddTaskResponseModelImpl value,
          $Res Function(_$AddTaskResponseModelImpl) then) =
      __$$AddTaskResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') @HiveField(0) String todoName,
      @JsonKey(name: 'id') @HiveField(1) int todoId,
      @JsonKey(name: 'completed') @HiveField(2) bool isCompleted,
      @HiveField(3) int userId});
}

/// @nodoc
class __$$AddTaskResponseModelImplCopyWithImpl<$Res>
    extends _$AddTaskResponseModelCopyWithImpl<$Res, _$AddTaskResponseModelImpl>
    implements _$$AddTaskResponseModelImplCopyWith<$Res> {
  __$$AddTaskResponseModelImplCopyWithImpl(_$AddTaskResponseModelImpl _value,
      $Res Function(_$AddTaskResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? todoId = null,
    Object? isCompleted = null,
    Object? userId = null,
  }) {
    return _then(_$AddTaskResponseModelImpl(
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
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'TasksAdapter')
class _$AddTaskResponseModelImpl extends _AddTaskResponseModel {
  _$AddTaskResponseModelImpl(
      {@JsonKey(name: 'todo') @HiveField(0) required this.todoName,
      @JsonKey(name: 'id') @HiveField(1) required this.todoId,
      @JsonKey(name: 'completed') @HiveField(2) required this.isCompleted,
      @HiveField(3) required this.userId})
      : super._();

  factory _$AddTaskResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTaskResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'todo')
  @HiveField(0)
  final String todoName;
  @override
  @JsonKey(name: 'id')
  @HiveField(1)
  final int todoId;
  @override
  @JsonKey(name: 'completed')
  @HiveField(2)
  final bool isCompleted;
  @override
  @HiveField(3)
  final int userId;

  @override
  String toString() {
    return 'AddTaskResponseModel(todoName: $todoName, todoId: $todoId, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskResponseModelImpl &&
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
  _$$AddTaskResponseModelImplCopyWith<_$AddTaskResponseModelImpl>
      get copyWith =>
          __$$AddTaskResponseModelImplCopyWithImpl<_$AddTaskResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTaskResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddTaskResponseModel extends AddTaskResponseModel {
  factory _AddTaskResponseModel(
      {@JsonKey(name: 'todo') @HiveField(0) required final String todoName,
      @JsonKey(name: 'id') @HiveField(1) required final int todoId,
      @JsonKey(name: 'completed') @HiveField(2) required final bool isCompleted,
      @HiveField(3) required final int userId}) = _$AddTaskResponseModelImpl;
  _AddTaskResponseModel._() : super._();

  factory _AddTaskResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddTaskResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'todo')
  @HiveField(0)
  String get todoName;
  @override
  @JsonKey(name: 'id')
  @HiveField(1)
  int get todoId;
  @override
  @JsonKey(name: 'completed')
  @HiveField(2)
  bool get isCompleted;
  @override
  @HiveField(3)
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskResponseModelImplCopyWith<_$AddTaskResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

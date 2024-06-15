// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTaskRequestModel {
  @JsonKey(name: 'todo')
  String get todoName => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTaskRequestModelCopyWith<AddTaskRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskRequestModelCopyWith<$Res> {
  factory $AddTaskRequestModelCopyWith(
          AddTaskRequestModel value, $Res Function(AddTaskRequestModel) then) =
      _$AddTaskRequestModelCopyWithImpl<$Res, AddTaskRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') String todoName,
      @JsonKey(name: 'completed') bool? isCompleted,
      String userId});
}

/// @nodoc
class _$AddTaskRequestModelCopyWithImpl<$Res, $Val extends AddTaskRequestModel>
    implements $AddTaskRequestModelCopyWith<$Res> {
  _$AddTaskRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddTaskRequestModelImplCopyWith<$Res>
    implements $AddTaskRequestModelCopyWith<$Res> {
  factory _$$AddTaskRequestModelImplCopyWith(_$AddTaskRequestModelImpl value,
          $Res Function(_$AddTaskRequestModelImpl) then) =
      __$$AddTaskRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') String todoName,
      @JsonKey(name: 'completed') bool? isCompleted,
      String userId});
}

/// @nodoc
class __$$AddTaskRequestModelImplCopyWithImpl<$Res>
    extends _$AddTaskRequestModelCopyWithImpl<$Res, _$AddTaskRequestModelImpl>
    implements _$$AddTaskRequestModelImplCopyWith<$Res> {
  __$$AddTaskRequestModelImplCopyWithImpl(_$AddTaskRequestModelImpl _value,
      $Res Function(_$AddTaskRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = null,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_$AddTaskRequestModelImpl(
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
@JsonSerializable(createFactory: false)
class _$AddTaskRequestModelImpl implements _AddTaskRequestModel {
  const _$AddTaskRequestModelImpl(
      {@JsonKey(name: 'todo') required this.todoName,
      @JsonKey(name: 'completed') this.isCompleted = false,
      required this.userId});

  @override
  @JsonKey(name: 'todo')
  final String todoName;
  @override
  @JsonKey(name: 'completed')
  final bool? isCompleted;
  @override
  final String userId;

  @override
  String toString() {
    return 'AddTaskRequestModel(todoName: $todoName, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskRequestModelImpl &&
            (identical(other.todoName, todoName) ||
                other.todoName == todoName) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todoName, isCompleted, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskRequestModelImplCopyWith<_$AddTaskRequestModelImpl> get copyWith =>
      __$$AddTaskRequestModelImplCopyWithImpl<_$AddTaskRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTaskRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddTaskRequestModel implements AddTaskRequestModel {
  const factory _AddTaskRequestModel(
      {@JsonKey(name: 'todo') required final String todoName,
      @JsonKey(name: 'completed') final bool? isCompleted,
      required final String userId}) = _$AddTaskRequestModelImpl;

  @override
  @JsonKey(name: 'todo')
  String get todoName;
  @override
  @JsonKey(name: 'completed')
  bool? get isCompleted;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskRequestModelImplCopyWith<_$AddTaskRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

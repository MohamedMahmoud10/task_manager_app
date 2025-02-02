// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateTaskRequestModel {
  @JsonKey(name: 'todo')
  String? get todoName => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTaskRequestModelCopyWith<UpdateTaskRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskRequestModelCopyWith<$Res> {
  factory $UpdateTaskRequestModelCopyWith(UpdateTaskRequestModel value,
          $Res Function(UpdateTaskRequestModel) then) =
      _$UpdateTaskRequestModelCopyWithImpl<$Res, UpdateTaskRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') String? todoName,
      @JsonKey(name: 'completed') bool? isCompleted,
      String userId});
}

/// @nodoc
class _$UpdateTaskRequestModelCopyWithImpl<$Res,
        $Val extends UpdateTaskRequestModel>
    implements $UpdateTaskRequestModelCopyWith<$Res> {
  _$UpdateTaskRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = freezed,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$UpdateTaskRequestModelImplCopyWith<$Res>
    implements $UpdateTaskRequestModelCopyWith<$Res> {
  factory _$$UpdateTaskRequestModelImplCopyWith(
          _$UpdateTaskRequestModelImpl value,
          $Res Function(_$UpdateTaskRequestModelImpl) then) =
      __$$UpdateTaskRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'todo') String? todoName,
      @JsonKey(name: 'completed') bool? isCompleted,
      String userId});
}

/// @nodoc
class __$$UpdateTaskRequestModelImplCopyWithImpl<$Res>
    extends _$UpdateTaskRequestModelCopyWithImpl<$Res,
        _$UpdateTaskRequestModelImpl>
    implements _$$UpdateTaskRequestModelImplCopyWith<$Res> {
  __$$UpdateTaskRequestModelImplCopyWithImpl(
      _$UpdateTaskRequestModelImpl _value,
      $Res Function(_$UpdateTaskRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoName = freezed,
    Object? isCompleted = freezed,
    Object? userId = null,
  }) {
    return _then(_$UpdateTaskRequestModelImpl(
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
@JsonSerializable(createFactory: false)
class _$UpdateTaskRequestModelImpl implements _UpdateTaskRequestModel {
  const _$UpdateTaskRequestModelImpl(
      {@JsonKey(name: 'todo') this.todoName,
      @JsonKey(name: 'completed') this.isCompleted = false,
      required this.userId});

  @override
  @JsonKey(name: 'todo')
  final String? todoName;
  @override
  @JsonKey(name: 'completed')
  final bool? isCompleted;
  @override
  final String userId;

  @override
  String toString() {
    return 'UpdateTaskRequestModel(todoName: $todoName, isCompleted: $isCompleted, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskRequestModelImpl &&
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
  _$$UpdateTaskRequestModelImplCopyWith<_$UpdateTaskRequestModelImpl>
      get copyWith => __$$UpdateTaskRequestModelImplCopyWithImpl<
          _$UpdateTaskRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskRequestModel implements UpdateTaskRequestModel {
  const factory _UpdateTaskRequestModel(
      {@JsonKey(name: 'todo') final String? todoName,
      @JsonKey(name: 'completed') final bool? isCompleted,
      required final String userId}) = _$UpdateTaskRequestModelImpl;

  @override
  @JsonKey(name: 'todo')
  String? get todoName;
  @override
  @JsonKey(name: 'completed')
  bool? get isCompleted;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskRequestModelImplCopyWith<_$UpdateTaskRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

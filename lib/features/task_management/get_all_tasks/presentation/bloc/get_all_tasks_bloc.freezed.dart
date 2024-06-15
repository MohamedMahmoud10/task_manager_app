// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllTasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFetched,
    required TResult Function() fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFetched,
    TResult? Function()? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFetched,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartFetched value) startFetched,
    required TResult Function(_FetchMore value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartFetched value)? startFetched,
    TResult? Function(_FetchMore value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartFetched value)? startFetched,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTasksEventCopyWith<$Res> {
  factory $GetAllTasksEventCopyWith(
          GetAllTasksEvent value, $Res Function(GetAllTasksEvent) then) =
      _$GetAllTasksEventCopyWithImpl<$Res, GetAllTasksEvent>;
}

/// @nodoc
class _$GetAllTasksEventCopyWithImpl<$Res, $Val extends GetAllTasksEvent>
    implements $GetAllTasksEventCopyWith<$Res> {
  _$GetAllTasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartFetchedImplCopyWith<$Res> {
  factory _$$StartFetchedImplCopyWith(
          _$StartFetchedImpl value, $Res Function(_$StartFetchedImpl) then) =
      __$$StartFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartFetchedImplCopyWithImpl<$Res>
    extends _$GetAllTasksEventCopyWithImpl<$Res, _$StartFetchedImpl>
    implements _$$StartFetchedImplCopyWith<$Res> {
  __$$StartFetchedImplCopyWithImpl(
      _$StartFetchedImpl _value, $Res Function(_$StartFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartFetchedImpl implements _StartFetched {
  const _$StartFetchedImpl();

  @override
  String toString() {
    return 'GetAllTasksEvent.startFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFetched,
    required TResult Function() fetchMore,
  }) {
    return startFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFetched,
    TResult? Function()? fetchMore,
  }) {
    return startFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFetched,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (startFetched != null) {
      return startFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartFetched value) startFetched,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return startFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartFetched value)? startFetched,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return startFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartFetched value)? startFetched,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (startFetched != null) {
      return startFetched(this);
    }
    return orElse();
  }
}

abstract class _StartFetched implements GetAllTasksEvent {
  const factory _StartFetched() = _$StartFetchedImpl;
}

/// @nodoc
abstract class _$$FetchMoreImplCopyWith<$Res> {
  factory _$$FetchMoreImplCopyWith(
          _$FetchMoreImpl value, $Res Function(_$FetchMoreImpl) then) =
      __$$FetchMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreImplCopyWithImpl<$Res>
    extends _$GetAllTasksEventCopyWithImpl<$Res, _$FetchMoreImpl>
    implements _$$FetchMoreImplCopyWith<$Res> {
  __$$FetchMoreImplCopyWithImpl(
      _$FetchMoreImpl _value, $Res Function(_$FetchMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMoreImpl implements _FetchMore {
  const _$FetchMoreImpl();

  @override
  String toString() {
    return 'GetAllTasksEvent.fetchMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFetched,
    required TResult Function() fetchMore,
  }) {
    return fetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFetched,
    TResult? Function()? fetchMore,
  }) {
    return fetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFetched,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartFetched value) startFetched,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartFetched value)? startFetched,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartFetched value)? startFetched,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _FetchMore implements GetAllTasksEvent {
  const factory _FetchMore() = _$FetchMoreImpl;
}

/// @nodoc
mixin _$GetAllTasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)
        success,
    required TResult Function(List<TasksResponseEntity> responseEntity)
        fetchingMore,
    required TResult Function(String errorMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult? Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult? Function(String errorMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(FetchingMore value)? fetchingMore,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllTasksStateCopyWith<$Res> {
  factory $GetAllTasksStateCopyWith(
          GetAllTasksState value, $Res Function(GetAllTasksState) then) =
      _$GetAllTasksStateCopyWithImpl<$Res, GetAllTasksState>;
}

/// @nodoc
class _$GetAllTasksStateCopyWithImpl<$Res, $Val extends GetAllTasksState>
    implements $GetAllTasksStateCopyWith<$Res> {
  _$GetAllTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetAllTasksStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetAllTasksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)
        success,
    required TResult Function(List<TasksResponseEntity> responseEntity)
        fetchingMore,
    required TResult Function(String errorMsg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult? Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult? Function(String errorMsg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(FetchingMore value)? fetchingMore,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GetAllTasksState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GetAllTasksStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GetAllTasksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)
        success,
    required TResult Function(List<TasksResponseEntity> responseEntity)
        fetchingMore,
    required TResult Function(String errorMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult? Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult? Function(String errorMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(FetchingMore value)? fetchingMore,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GetAllTasksState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TasksResponseEntity> responseEntity, bool hasReachedEnd});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GetAllTasksStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseEntity = null,
    Object? hasReachedEnd = null,
  }) {
    return _then(_$SuccessImpl(
      responseEntity: null == responseEntity
          ? _value._responseEntity
          : responseEntity // ignore: cast_nullable_to_non_nullable
              as List<TasksResponseEntity>,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(
      {required final List<TasksResponseEntity> responseEntity,
      required this.hasReachedEnd})
      : _responseEntity = responseEntity;

  final List<TasksResponseEntity> _responseEntity;
  @override
  List<TasksResponseEntity> get responseEntity {
    if (_responseEntity is EqualUnmodifiableListView) return _responseEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responseEntity);
  }

  @override
  final bool hasReachedEnd;

  @override
  String toString() {
    return 'GetAllTasksState.success(responseEntity: $responseEntity, hasReachedEnd: $hasReachedEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._responseEntity, _responseEntity) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_responseEntity), hasReachedEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)
        success,
    required TResult Function(List<TasksResponseEntity> responseEntity)
        fetchingMore,
    required TResult Function(String errorMsg) error,
  }) {
    return success(responseEntity, hasReachedEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult? Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult? Function(String errorMsg)? error,
  }) {
    return success?.call(responseEntity, hasReachedEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(responseEntity, hasReachedEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(FetchingMore value)? fetchingMore,
    TResult? Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements GetAllTasksState {
  const factory Success(
      {required final List<TasksResponseEntity> responseEntity,
      required final bool hasReachedEnd}) = _$SuccessImpl;

  List<TasksResponseEntity> get responseEntity;
  bool get hasReachedEnd;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchingMoreImplCopyWith<$Res> {
  factory _$$FetchingMoreImplCopyWith(
          _$FetchingMoreImpl value, $Res Function(_$FetchingMoreImpl) then) =
      __$$FetchingMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TasksResponseEntity> responseEntity});
}

/// @nodoc
class __$$FetchingMoreImplCopyWithImpl<$Res>
    extends _$GetAllTasksStateCopyWithImpl<$Res, _$FetchingMoreImpl>
    implements _$$FetchingMoreImplCopyWith<$Res> {
  __$$FetchingMoreImplCopyWithImpl(
      _$FetchingMoreImpl _value, $Res Function(_$FetchingMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseEntity = null,
  }) {
    return _then(_$FetchingMoreImpl(
      null == responseEntity
          ? _value._responseEntity
          : responseEntity // ignore: cast_nullable_to_non_nullable
              as List<TasksResponseEntity>,
    ));
  }
}

/// @nodoc

class _$FetchingMoreImpl implements FetchingMore {
  const _$FetchingMoreImpl(final List<TasksResponseEntity> responseEntity)
      : _responseEntity = responseEntity;

  final List<TasksResponseEntity> _responseEntity;
  @override
  List<TasksResponseEntity> get responseEntity {
    if (_responseEntity is EqualUnmodifiableListView) return _responseEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_responseEntity);
  }

  @override
  String toString() {
    return 'GetAllTasksState.fetchingMore(responseEntity: $responseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingMoreImpl &&
            const DeepCollectionEquality()
                .equals(other._responseEntity, _responseEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_responseEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchingMoreImplCopyWith<_$FetchingMoreImpl> get copyWith =>
      __$$FetchingMoreImplCopyWithImpl<_$FetchingMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)
        success,
    required TResult Function(List<TasksResponseEntity> responseEntity)
        fetchingMore,
    required TResult Function(String errorMsg) error,
  }) {
    return fetchingMore(responseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult? Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult? Function(String errorMsg)? error,
  }) {
    return fetchingMore?.call(responseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (fetchingMore != null) {
      return fetchingMore(responseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Error value) error,
  }) {
    return fetchingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(FetchingMore value)? fetchingMore,
    TResult? Function(Error value)? error,
  }) {
    return fetchingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (fetchingMore != null) {
      return fetchingMore(this);
    }
    return orElse();
  }
}

abstract class FetchingMore implements GetAllTasksState {
  const factory FetchingMore(final List<TasksResponseEntity> responseEntity) =
      _$FetchingMoreImpl;

  List<TasksResponseEntity> get responseEntity;
  @JsonKey(ignore: true)
  _$$FetchingMoreImplCopyWith<_$FetchingMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GetAllTasksStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ErrorImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'GetAllTasksState.error(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)
        success,
    required TResult Function(List<TasksResponseEntity> responseEntity)
        fetchingMore,
    required TResult Function(String errorMsg) error,
  }) {
    return error(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult? Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult? Function(String errorMsg)? error,
  }) {
    return error?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<TasksResponseEntity> responseEntity, bool hasReachedEnd)?
        success,
    TResult Function(List<TasksResponseEntity> responseEntity)? fetchingMore,
    TResult Function(String errorMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(FetchingMore value) fetchingMore,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(FetchingMore value)? fetchingMore,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(FetchingMore value)? fetchingMore,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GetAllTasksState {
  const factory Error({required final String errorMsg}) = _$ErrorImpl;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

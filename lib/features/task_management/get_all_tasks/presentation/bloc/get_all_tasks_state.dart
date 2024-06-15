part of 'get_all_tasks_bloc.dart';

@freezed
class GetAllTasksState with _$GetAllTasksState {
  const factory GetAllTasksState.initial() = Initial;
  const factory GetAllTasksState.loading() = Loading;
  const factory GetAllTasksState.success({
    required List<TasksResponseEntity> responseEntity,
    required bool hasReachedEnd,
  }) = Success;
  const factory GetAllTasksState.fetchingMore(List<TasksResponseEntity> responseEntity) = FetchingMore;
  const factory GetAllTasksState.error({required String errorMsg}) = Error;
}

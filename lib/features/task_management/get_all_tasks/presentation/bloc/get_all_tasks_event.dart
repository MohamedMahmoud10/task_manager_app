part of 'get_all_tasks_bloc.dart';

@freezed
class GetAllTasksEvent with _$GetAllTasksEvent {
  const factory GetAllTasksEvent.startFetched() = _StartFetched;
  const factory GetAllTasksEvent.fetchMore() = _FetchMore;
}

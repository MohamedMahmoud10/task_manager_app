import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/entites/tasks_reponse_entity.dart';
import 'package:task_manager_app/features/task_management/get_all_tasks/domain/use_case/get_all_tasks_use_case.dart';

part 'get_all_tasks_event.dart';
part 'get_all_tasks_state.dart';
part 'get_all_tasks_bloc.freezed.dart';

class GetAllTasksBloc extends Bloc<GetAllTasksEvent, GetAllTasksState> {
  final GetAllTasksUseCase _useCase;
  int _skip = 0;
  final int _limit = 20;
  List<TasksResponseEntity> _tasks = [];
  bool _isFetching = false;
  bool _hasReachedEnd = false;

  GetAllTasksBloc(this._useCase) : super(const GetAllTasksState.initial()) {
    on<GetAllTasksEvent>((event, emit) async {
      await event.when(
        startFetched: () => _fetchTasks(emit, reset: true),
        fetchMore: () => _fetchTasks(emit),
      );
    });
  }

  Future<void> _fetchTasks(Emitter<GetAllTasksState> emit, {bool reset = false}) async {
    if (_isFetching || _hasReachedEnd) return;
    _isFetching = true;

    if (reset) {
      _skip = 0;
      _tasks.clear();
      _hasReachedEnd = false;
      emit(const GetAllTasksState.loading());
    } else {
      emit(GetAllTasksState.fetchingMore(_tasks));
    }

    final result = await _useCase(
      Params(_skip, _limit),
    );
    result.when(
          (success) {
        if (success.isEmpty) {
          _hasReachedEnd = true;
        } else {
          _tasks.addAll(success);
          _skip += _limit;
        }
        emit(GetAllTasksState.success(responseEntity: _tasks, hasReachedEnd: _hasReachedEnd));
      },
          (error) => emit(GetAllTasksState.error(errorMsg: error.message ?? 'Unknown error')),
    );

    _isFetching = false;
  }
}

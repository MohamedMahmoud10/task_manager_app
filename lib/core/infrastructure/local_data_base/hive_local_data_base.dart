import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager_app/core/const/database_constants.dart';
import 'package:task_manager_app/features/task_management/add_task/data/models/add_task_response_model.dart';

import 'base_local_data_base.dart';

@LazySingleton(as: BaseDatabase)
class HiveDatabaseClient implements BaseDatabase {
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    // region register adapters
    // Hive.registerAdapter<AddTaskResponseModel>(TasksAdapter());
    // endregion

    // region open boxes
    await Hive.openBox<AddTaskResponseModel>(DatabaseConstants.tasksBoxKey);
    // endregion
  }

  @override
  Future<void> save<T>({
    required String tableName,
    required String key,
    required T value,
  }) async {
    final box = Hive.box<T>(tableName);
    return box.put(key, value);
  }

  @override
  Future<void> saveAll<T>({
    required String tableName,
    required List<T>? list,
    required List<dynamic>? keys,
  }) async {
    if (list != null && keys != null && list.length == keys.length) {
      final box = Hive.box<T>(tableName);
      for (int i = 0; i < list.length; i++) {
        await box.put(keys[i], list[i]);
      }
    }
  }

  @override
  T? get<T>({
    required String tableName,
    required String key,
  }) {
    final box = Hive.box<T>(tableName);
    return box.get(key);
  }

  @override
  List<T>? getAll<T>({
    required String tableName,
  }) {
    final box = Hive.box<T>(tableName);
    return box.values.toList();
  }

  @override
  Future<void> delete<T>({
    required String tableName,
    required String key,
  }) async {
    final box = Hive.box<T>(tableName);
    return box.delete(key);
  }

  @override
  Future<int> clear({
    required String tableName,
  }) async {
    final box = Hive.box(tableName);
    return box.clear();
  }

  @override
  Future<int> add<T>({required String tableName, required T data}) {
    final box = Hive.box<T>(tableName);
    return box.add(data); // Perform type casting to match the type of the box
  }

  @override
  Future<bool> isNotificationScheduled({
    required String tableName,
    required String key,
  }) async {
    final box = await Hive.openBox(tableName);
    return box.containsKey(key);
  }

  @override
  Future<void> markNotificationScheduled({
    required String tableName,
    required String key,
  }) async {
    final box = await Hive.openBox(tableName);
    await box.put(key, true);
  }
}

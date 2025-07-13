import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/data/tasks/tasks_repository.dart';
import 'package:techrar_project_team_dashboard/core/data/tasks/tasks_repository_imp.dart';
import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/features/user_tasks/view_model/user_tasks_state.dart';

part 'user_tasks_view_model.g.dart';

List<Map<String, dynamic>> filterCompletedTasks(List<Map<String, dynamic>> tasks) {
  return tasks.where((task) => task['taskStatus'] != "done").toList();
}

@riverpod
class UserTasksViewModel extends _$UserTasksViewModel {
  late final List<TaskModel> originalList;

  TasksRepository get _tasksRepository => ref.read(tasksRepositoryProvider);
  @override
  FutureOr<UserTasksState> build() async {
    return UserTasksState(userTasksList: await _getTasks(), isFiltered: false);
  }

  Future<List<TaskModel>> _getTasks() async {
    /// in order to not break the logic of the BaseUrl and the other mocks..
    /// I am using a mocking instead of the URL in the task with the same 200 Objects for the heavy filtering task
    /// for more optimization the API should have a pagination system and filtering API
    /// and this heavy local filtering only when the we already fetch > 200 item
    /// in order to avoid load the same data again but filtered
    ResponseModel<List<TaskModel>> response = await _tasksRepository.getUserTasksList();

    if (response.errorMsg.isNotEmpty) {
      throw AsyncError(response.errorMsg, StackTrace.empty);
    }
    originalList = response.data;
    return response.data;
  }

  /// Using Isolates in order to not block the UI, if the user wants to make another action while the process is in progress
  void filterIncompleteTasks() async {
    if (state.requireValue.isFiltered) {
      state = AsyncData(state.requireValue.copyWith(userTasksList: originalList, isFiltered: false));
    } else {
      final filteredList = await getFilteredTasks(state.requireValue.userTasksList);

      state = AsyncData(state.requireValue.copyWith(userTasksList: filteredList, isFiltered: true));
    }
  }

  Future<List<TaskModel>> getFilteredTasks(List<TaskModel> tasks) async {
    final List<Map<String, dynamic>> jsonTasks = tasks.map((e) => e.toJson()).toList();

    final List<Map<String, dynamic>> filteredJson = await compute(filterCompletedTasks, jsonTasks);

    return filteredJson.map((e) => TaskModel.fromJson(e)).toList();
  }
}

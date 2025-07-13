import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/recent_tasks/models/recent_tasks_network_model.dart';

class RecentTasksNetworkListMapper {
  static List<TaskModel> convertNetworkList(TasksListNetworkModel networkList) {
    List<TaskModel> tasksModelList = [];

    for (var networkModel in networkList.tasksList) {
      tasksModelList.add(_convert(networkModel));
    }

    return tasksModelList;
  }

  static TaskModel _convert(TaskNetworkModel input) {
    return TaskModel(
      title: input.title,
      assignedUser: input.assignedUser,
      taskStatus: _convertEnum(input.taskEnum),
      dueDate: input.dueDate ?? DateTime.now(),
    );
  }

  static TaskStatus _convertEnum(TaskNetworkStatus networkEnum) {
    switch (networkEnum) {
      case TaskNetworkStatus.todo:
        return TaskStatus.todo;
      case TaskNetworkStatus.inProgress:
        return TaskStatus.inProgress;
      case TaskNetworkStatus.testing:
        return TaskStatus.testing;
      case TaskNetworkStatus.done:
        return TaskStatus.done;
    }
  }
}

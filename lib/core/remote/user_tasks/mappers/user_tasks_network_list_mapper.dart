import 'package:techrar_project_team_dashboard/core/models/tasks/tasks_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/user_tasks/models/user_tasks_network_model.dart';

class UserTasksNetworkListMapper {
  static List<TaskModel> convertNetworkList(UserTasksListNetworkModel networkList) {
    List<TaskModel> tasksModelList = [];

    for (var networkModel in networkList.tasksList) {
      tasksModelList.add(_convert(networkModel));
    }

    return tasksModelList;
  }

  static TaskModel _convert(UserTaskNetworkModel input) {
    return TaskModel(
      title: input.title,
      assignedUser: input.assignedUser,
      taskStatus: _convertEnum(input.taskEnum),
      dueDate: input.dueDate ?? DateTime.now(),
    );
  }

  static TaskStatus _convertEnum(UserTaskNetworkStatus networkEnum) {
    switch (networkEnum) {
      case UserTaskNetworkStatus.todo:
        return TaskStatus.todo;
      case UserTaskNetworkStatus.inProgress:
        return TaskStatus.inProgress;
      case UserTaskNetworkStatus.testing:
        return TaskStatus.testing;
      case UserTaskNetworkStatus.done:
        return TaskStatus.done;
    }
  }
}

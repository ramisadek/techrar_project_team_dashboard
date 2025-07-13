// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tasks_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserTasksListNetworkModel _$UserTasksListNetworkModelFromJson(
  Map<String, dynamic> json,
) => _UserTasksListNetworkModel(
  tasksList:
      (json['data'] as List<dynamic>?)
          ?.map((e) => UserTaskNetworkModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$UserTasksListNetworkModelToJson(
  _UserTasksListNetworkModel instance,
) => <String, dynamic>{'data': instance.tasksList};

_UserTaskNetworkModel _$UserTaskNetworkModelFromJson(
  Map<String, dynamic> json,
) => _UserTaskNetworkModel(
  userId: (json['userId'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String? ?? "",
  assignedUser: json['assignedUser'] as String? ?? "",
  dueDate: json['dueDate'] == null
      ? null
      : DateTime.parse(json['dueDate'] as String),
  taskEnum: $enumDecode(_$UserTaskNetworkStatusEnumMap, json['task_status']),
);

Map<String, dynamic> _$UserTaskNetworkModelToJson(
  _UserTaskNetworkModel instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'id': instance.id,
  'title': instance.title,
  'assignedUser': instance.assignedUser,
  'dueDate': instance.dueDate?.toIso8601String(),
  'task_status': _$UserTaskNetworkStatusEnumMap[instance.taskEnum]!,
};

const _$UserTaskNetworkStatusEnumMap = {
  UserTaskNetworkStatus.todo: 'todo',
  UserTaskNetworkStatus.inProgress: 'in_progress',
  UserTaskNetworkStatus.testing: 'test',
  UserTaskNetworkStatus.done: 'done',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_tasks_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TasksListNetworkModel _$TasksListNetworkModelFromJson(
  Map<String, dynamic> json,
) => _TasksListNetworkModel(
  tasksList:
      (json['data'] as List<dynamic>?)
          ?.map((e) => TaskNetworkModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TasksListNetworkModelToJson(
  _TasksListNetworkModel instance,
) => <String, dynamic>{'data': instance.tasksList};

_TaskNetworkModel _$TaskNetworkModelFromJson(Map<String, dynamic> json) =>
    _TaskNetworkModel(
      title: json['title'] as String? ?? "",
      assignedUser: json['assignedUser'] as String? ?? "",
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      taskEnum: $enumDecode(_$TaskNetworkStatusEnumMap, json['task_status']),
    );

Map<String, dynamic> _$TaskNetworkModelToJson(_TaskNetworkModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'assignedUser': instance.assignedUser,
      'dueDate': instance.dueDate?.toIso8601String(),
      'task_status': _$TaskNetworkStatusEnumMap[instance.taskEnum]!,
    };

const _$TaskNetworkStatusEnumMap = {
  TaskNetworkStatus.todo: 'todo',
  TaskNetworkStatus.inProgress: 'in_progress',
  TaskNetworkStatus.testing: 'testing',
  TaskNetworkStatus.done: 'done',
};

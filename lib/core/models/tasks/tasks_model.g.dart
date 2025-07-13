// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => _TaskModel(
  title: json['title'] as String,
  assignedUser: json['assignedUser'] as String,
  dueDate: DateTime.parse(json['dueDate'] as String),
  taskStatus: $enumDecode(_$TaskStatusEnumMap, json['taskStatus']),
);

Map<String, dynamic> _$TaskModelToJson(_TaskModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'assignedUser': instance.assignedUser,
      'dueDate': instance.dueDate.toIso8601String(),
      'taskStatus': _$TaskStatusEnumMap[instance.taskStatus]!,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.todo: 'todo',
  TaskStatus.inProgress: 'inProgress',
  TaskStatus.testing: 'testing',
  TaskStatus.done: 'done',
};

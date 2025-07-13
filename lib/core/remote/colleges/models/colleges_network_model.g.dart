// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colleges_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CollegesListNetworkModel _$CollegesListNetworkModelFromJson(
  Map<String, dynamic> json,
) => _CollegesListNetworkModel(
  collegesList:
      (json['data'] as List<dynamic>?)
          ?.map((e) => CollegesNetworkModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CollegesListNetworkModelToJson(
  _CollegesListNetworkModel instance,
) => <String, dynamic>{'data': instance.collegesList};

_CollegesNetworkModel _$CollegesNetworkModelFromJson(
  Map<String, dynamic> json,
) => _CollegesNetworkModel(
  name: json['name'] as String? ?? "",
  role: json['role'] as String? ?? "",
  avatarUrl: json['avatarUrl'] as String? ?? "",
  isOnline: json['isOnline'] as bool? ?? false,
);

Map<String, dynamic> _$CollegesNetworkModelToJson(
  _CollegesNetworkModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'role': instance.role,
  'avatarUrl': instance.avatarUrl,
  'isOnline': instance.isOnline,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsModelImpl _$$GroupsModelImplFromJson(Map<String, dynamic> json) =>
    _$GroupsModelImpl(
      groupID: json['groupID'] as String? ?? "",
      groupName: json['groupName'] as String,
      groupBalance: json['groupBalance'] as int? ?? 0,
    );

Map<String, dynamic> _$$GroupsModelImplToJson(_$GroupsModelImpl instance) =>
    <String, dynamic>{
      'groupID': instance.groupID,
      'groupName': instance.groupName,
      'groupBalance': instance.groupBalance,
    };

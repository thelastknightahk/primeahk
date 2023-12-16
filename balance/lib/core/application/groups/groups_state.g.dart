// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupsStateImpl _$$GroupsStateImplFromJson(Map<String, dynamic> json) =>
    _$GroupsStateImpl(
      groupList: (json['groupList'] as List<dynamic>?)
              ?.map((e) => GroupsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      groupsModel: json['groupsModel'] == null
          ? null
          : GroupsModel.fromJson(json['groupsModel'] as Map<String, dynamic>),
      balance: json['balance'] as int? ?? 0,
    );

Map<String, dynamic> _$$GroupsStateImplToJson(_$GroupsStateImpl instance) =>
    <String, dynamic>{
      'groupList': instance.groupList,
      'groupsModel': instance.groupsModel,
      'balance': instance.balance,
    };

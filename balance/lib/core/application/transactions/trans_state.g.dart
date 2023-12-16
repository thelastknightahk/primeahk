// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransStateImpl _$$TransStateImplFromJson(Map<String, dynamic> json) =>
    _$TransStateImpl(
      trasList: (json['trasList'] as List<dynamic>?)
              ?.map((e) => TransModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TransStateImplToJson(_$TransStateImpl instance) =>
    <String, dynamic>{
      'trasList': instance.trasList,
    };

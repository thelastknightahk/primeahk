// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransModelImpl _$$TransModelImplFromJson(Map<String, dynamic> json) =>
    _$TransModelImpl(
      transID: json['transID'] as String? ?? "",
      transDate: json['transDate'] == null
          ? null
          : DateTime.parse(json['transDate'] as String),
      transAmt: json['transAmt'] as int? ?? 0,
      transIncome: json['transIncome'] as bool? ?? false,
      transGroupID: json['transGroupID'] as String? ?? "",
    );

Map<String, dynamic> _$$TransModelImplToJson(_$TransModelImpl instance) =>
    <String, dynamic>{
      'transID': instance.transID,
      'transDate': instance.transDate?.toIso8601String(),
      'transAmt': instance.transAmt,
      'transIncome': instance.transIncome,
      'transGroupID': instance.transGroupID,
    };

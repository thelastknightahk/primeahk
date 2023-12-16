import 'package:freezed_annotation/freezed_annotation.dart';

part 'groups_model.freezed.dart';
part 'groups_model.g.dart';

@freezed
class GroupsModel with _$GroupsModel {

  factory GroupsModel({
     @Default("")  String? groupID, 
    required String groupName, 
    @Default(0) int groupBalance
  }) = _GroupsModel;

  factory GroupsModel.fromJson(Map<String, dynamic> json) => _$GroupsModelFromJson(json);
}
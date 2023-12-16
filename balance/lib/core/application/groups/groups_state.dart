 
import 'package:balance/core/models/groups_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'groups_state.freezed.dart';
part 'groups_state.g.dart';

@freezed
class GroupsState with _$GroupsState {

  factory GroupsState({
   @Default([]) List<GroupsModel> groupList,
   GroupsModel? groupsModel, 
   @Default(0) int balance
  }) = _GroupsState;

  factory GroupsState.fromJson(Map<String, dynamic> json) => _$GroupsStateFromJson(json);
}
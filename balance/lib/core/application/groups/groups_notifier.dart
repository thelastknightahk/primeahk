import 'package:balance/core/application/groups/groups_state.dart';
import 'package:balance/core/database/dao/groups_dao.dart';
import 'package:balance/core/models/groups_model.dart';
import 'package:balance/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class GroupsNotifier extends StateNotifier<GroupsState> {
  GroupsNotifier() : super(GroupsState());

  final GroupsDao _groupsDao = getIt.get<GroupsDao>();
  Future<void> addGroups(String groupName) async {
    _groupsDao.insert(groupName, const Uuid().v1());
    state = state.copyWith(groupList: [
      ...state.groupList,
      GroupsModel(groupID: const Uuid().v1(), groupName: groupName)
    ]);
  }

  Future<List<GroupsModel>> getGroupList() async {
    List<GroupsModel> groups = [];
    await _groupsDao.getGroupList().then((value) {
      for (var data in value) {
        groups.add(GroupsModel(
            groupName: data.name,
            groupBalance: data.balance,
            groupID: data.id));
      }
    });
    state = state.copyWith(groupList: groups);
    return groups;
  }

  Future<void> getGroupData(String groupID) async {
   var groupData =  await _groupsDao.getGroupData(groupID) ;
   state = state.copyWith(groupsModel: GroupsModel(groupName: groupData!.name, groupBalance: groupData.balance, groupID: groupData.id));
  }

  Future<void> adjustBalance(int balance , String groupID) async{
      _groupsDao.adjustBalance(balance  , groupID);
  }

  Future<void> getBalance(  String groupID) async{
   int balance =  await _groupsDao.getBalance(groupID);
   state = state.copyWith(balance: balance);
  }
}

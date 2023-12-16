import 'package:balance/core/database/database.dart';
import 'package:balance/core/database/tables/groups.dart';
import 'package:drift/drift.dart'; 
import 'package:injectable/injectable.dart'; 

part 'groups_dao.g.dart';

@lazySingleton
@DriftAccessor(tables: [Groups])
class GroupsDao extends DatabaseAccessor<Database> with _$GroupsDaoMixin {
  GroupsDao(super.db);

  Future insert(String name, String groupID) {
    return into(groups).insert(GroupsCompanion.insert(id: groupID, name: name));
  }

  Future adjustBalance(int balance, String groupId) async {
    final companion = GroupsCompanion(balance: Value(balance));
    return (update(groups)..where((tbl) => tbl.id.equals(groupId))).write(companion);
  }

  Stream<List<Group>> watch() => select(groups).watch();

  Stream<Group?> watchGroup(String groupId) {
    return (select(groups)..where((tbl) => tbl.id.equals(groupId))).watchSingleOrNull();
  }

   Future<int> getBalance(String groupId) async {
    final query = select(groups)..where((tbl) => tbl.id.equals(groupId));
    final group = await query.getSingle();
    return group.balance ;
  }

  Future<Group?> getGroupData(String groupId) async { 
    return (select(groups)..where((tbl) => tbl.id.equals(groupId))).getSingleOrNull();
  }
  Future<List<Group>> getGroupList() async{
    return select(groups).get();
  }
}

import 'package:balance/core/application/groups/groups_notifier.dart';
import 'package:balance/core/application/groups/groups_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final groupsNotifierProvider =
    StateNotifierProvider<GroupsNotifier, GroupsState>((ref) {
  return GroupsNotifier();
});

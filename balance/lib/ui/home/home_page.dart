import 'package:balance/core/provider/groups/group_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _controller = TextEditingController();

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var groupList = ref.watch(groupsNotifierProvider).groupList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: FutureBuilder(
        future: ref.read(groupsNotifierProvider.notifier).getGroupList(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Text("Loading...");
          }
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      ref
                          .read(groupsNotifierProvider.notifier)
                          .addGroups(_controller.text);

                      _controller.text = "";
                    },
                    child: const Text("Create")),
              ]),
              Expanded(
                child: ListView.builder(
                    itemCount: groupList.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(groupList[index].groupName),
                          subtitle:
                              Text(groupList[index].groupBalance.toString()),
                          onTap: () {
                            GoRouterHelper(context)
                                .push("/groups/${groupList[index].groupID}");
                          },
                        )),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:balance/core/models/trans_model.dart';
import 'package:balance/core/provider/groups/group_provider.dart';
import 'package:balance/core/provider/transactions/transaction_provider.dart';
import 'package:balance/ui/group/widgets/update_trans_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GroupPage extends ConsumerStatefulWidget {
  final String groupId;
  const GroupPage(this.groupId, {super.key});

  @override
  GroupPageState createState() => GroupPageState();
}

class GroupPageState extends ConsumerState<GroupPage> {
  final _incomeController = TextEditingController();
  final _expenseController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      Future.wait([
        ref.read(transNotifierProvider.notifier).getTransList(widget.groupId),
        ref.read(groupsNotifierProvider.notifier).getBalance(widget.groupId)
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    var groupData = ref.watch(groupsNotifierProvider).groupsModel;

    var transList = ref.watch(transNotifierProvider).trasList;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Group details"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: ref
                .read(groupsNotifierProvider.notifier)
                .getGroupData(widget.groupId),
            builder: (context, snapshot) {
              if (groupData == null) {
                return const Text("Loading...");
              }
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(groupData.groupName),
                  Text(groupData.groupBalance.toString()),
                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        controller: _incomeController,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          suffixText: "\$",
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          final amount = int.parse(_incomeController.text);
                          final balance = groupData.groupBalance;
                          ref
                              .read(groupsNotifierProvider.notifier)
                              .adjustBalance(balance + amount, widget.groupId);

                          // transaction
                          ref.read(transNotifierProvider.notifier).addTrans(
                              TransModel(
                                  transDate: DateTime.now(),
                                  transGroupID: widget.groupId,
                                  transAmt: amount,
                                  transIncome: true));
                          ref
                              .read(transNotifierProvider.notifier)
                              .getTransList(widget.groupId);
                          _incomeController.text = "";
                        },
                        child: const Text("Add income")),
                  ]),
                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        controller: _expenseController,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                        ],
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          suffixText: "\$",
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          final amount = int.parse(_expenseController.text);
                          final balance = groupData.groupBalance;
                          ref
                              .read(groupsNotifierProvider.notifier)
                              .adjustBalance(balance - amount, widget.groupId);
                          // transaction
                          ref.read(transNotifierProvider.notifier).addTrans(
                              TransModel(
                                  transDate: DateTime.now(),
                                  transGroupID: widget.groupId,
                                  transAmt: amount,
                                  transIncome: false));
                          ref
                              .read(transNotifierProvider.notifier)
                              .getTransList(widget.groupId);
                          _expenseController.text = "";
                        },
                        child: const Text("Add expense")),
                  ]),
                ],
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: transList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return UpdateTransWidget(TransModel(
                              transID: transList[index].transID,
                              transGroupID: widget.groupId,
                              transAmt: transList[index].transAmt,
                              transDate: transList[index].transDate,
                              transIncome: transList[index].transIncome));
                        },
                      );
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Row(
                          children: [
                            SizedBox(
                                width: 150,
                                child: Text(
                                  transList[index].transDate.toString(),
                                  style: const TextStyle(
                                      overflow: TextOverflow.ellipsis),
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              "\$ ${transList[index].transAmt.toString()}",
                              style: TextStyle(
                                  color: transList[index].transIncome
                                      ? Colors.green
                                      : Colors.red),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

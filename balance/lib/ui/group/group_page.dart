import 'package:balance/core/models/trans_model.dart';
import 'package:balance/core/provider/groups/group_provider.dart';
import 'package:balance/core/provider/transactions/transaction_provider.dart';
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
    var balance = ref.watch(groupsNotifierProvider).balance;
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

                          _incomeController.text = "";
                        },
                        child: Text("Add income")),
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
                          _expenseController.text = "";
                        },
                        child: Text("Add expense")),
                  ]),
                ],
              );
            },
          ),
          Expanded(
            child: ListView.builder(
                itemCount: transList.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(
                          "${transList[index].transAmt.toString()} ${transList[index].transIncome.toString()}"),
                      subtitle: InkWell(
                          onTap: () async {
                            var totalIncome = 0;
                            var totalExpense = 0;
                            for (var i = 0; i < transList.length; i++) {
                              if (transList[i].transIncome) {
                                totalIncome += transList[i].transAmt;
                              }
                              if (!transList[i].transIncome) {
                                totalExpense += transList[i].transAmt;
                              }
                              print(
                                  "UpdAHK______________________________> ${transList[i].transAmt} }");
                            }

                            Future.wait([
                              Future.delayed(const Duration(milliseconds: 500),() async{
                              await  ref.read(transNotifierProvider.notifier).updTrans(
                                  TransModel(
                                      transID: transList[index].transID,
                                      transGroupID:
                                          transList[index].transGroupID,
                                      transAmt: 2,
                                      transDate: transList[index].transDate,
                                      transIncome:
                                          transList[index].transIncome));
                              }), 
                              // Future.delayed(const Duration(milliseconds: 500), () async{
                              //    await  ref
                              //     .read(groupsNotifierProvider.notifier)
                              //     .adjustBalance(
                              //         totalIncome - (totalExpense - 2),
                              //         widget.groupId);
                              // })
                           
                            ]);

                            print(
                                "Upd______________________________> ${totalIncome} ${totalExpense}  ${totalIncome - (totalExpense - 2)}");
                          },
                          child: Text(transList[index].transDate.toString())),
                      onTap: () {},
                    )),
          ),
        ],
      ),
    );
  }
}

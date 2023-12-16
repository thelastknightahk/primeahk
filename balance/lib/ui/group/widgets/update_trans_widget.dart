// ignore_for_file: must_be_immutable

import 'package:balance/core/models/trans_model.dart';
import 'package:balance/core/provider/groups/group_provider.dart';
import 'package:balance/core/provider/transactions/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

TextEditingController _textInput = TextEditingController();

class UpdateTransWidget extends ConsumerWidget {
  TransModel transModel;
  UpdateTransWidget(this.transModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: _textInput,
            keyboardType:
                const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
            ],
            decoration: InputDecoration(
              hintText: "\$ ${transModel.transAmt}",
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              if (_textInput.text.isNotEmpty) {
                await ref.read(transNotifierProvider.notifier).updTrans(
                    TransModel(
                        transID: transModel.transID,
                        transGroupID: transModel.transGroupID,
                        transAmt: int.parse(_textInput.text.toString()),
                        transDate: transModel.transDate,
                        transIncome: transModel.transIncome));
    
                var transactionList = await ref
                    .read(transNotifierProvider.notifier)
                    .getTransList(transModel.transGroupID);
                var totalIncome = 0;
                var totalExpense = 0;
                for (var i = 0; i < transactionList.length; i++) {
                  if (transactionList[i].transIncome) {
                    totalIncome += transactionList[i].transAmt;
                  }
                  if (!transactionList[i].transIncome) {
                    totalExpense += transactionList[i].transAmt;
                  }
                }
    
                Future.wait([
                  Future.delayed(const Duration(milliseconds: 500), () async {
                    await ref
                        .read(groupsNotifierProvider.notifier)
                        .adjustBalance(totalIncome - totalExpense,
                            transModel.transGroupID)
                        .then((value) {
                      _textInput.text = "";
                      context.pop();
                    });
                  })
                ]);
              }
            },
            child: const Text('UPDATE'),
          ),
        ],
      ),
    );
  }
}

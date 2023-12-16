import 'package:balance/core/application/transactions/trans_state.dart';
import 'package:balance/core/database/dao/transactions_dao.dart';
import 'package:balance/core/models/trans_model.dart';
import 'package:balance/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class TransNotifier extends StateNotifier<TransState> {
  TransNotifier() : super(TransState());
  final TransactionsDao _transactionsDao = getIt.get<TransactionsDao>();
  Future<void> addTrans(TransModel transModel) async {
    await _transactionsDao.insertTransaction(transModel.transDate!,
        transModel.transGroupID, transModel.transAmt, transModel.transIncome);
    state = state.copyWith(trasList: [
      ...state.trasList,
      TransModel(
          transID: const Uuid().v1().toString(),
          transGroupID: transModel.transGroupID,
          transDate: transModel.transDate,
          transAmt: transModel.transAmt,
          transIncome: transModel.transIncome)
    ]);
  }

  Future<void> updTrans(TransModel transModel) async {
    getTransList(transModel.transGroupID);
    await _transactionsDao.updateTransactionAmt(
        transModel.transID, transModel.transGroupID, transModel.transAmt);

    List<TransModel> transList = [];
    transList.addAll(state.trasList);
    for (var i = 0; i < transList.length; i++) {
      if (transList[i].transID.toString().trim() ==
          transModel.transID.toString().trim()) {
        transList[i] = transModel;
      }
    }

    state = state.copyWith(trasList: transList);
  }

  Future<List<TransModel>> getTransList(String groupID) async {
    List<TransModel> transList = [];
    await _transactionsDao.getTransactionList(groupID).then((value) {
      for (var data in value) {
        transList.add(TransModel(
            transID: data.id,
            transAmt: data.amount,
            transDate: data.createdAt,
            transGroupID: data.groupId,
            transIncome: data.incomeTrans));
      }
    });

    state = state.copyWith(trasList: transList);
    return transList;
  }
}

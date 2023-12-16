import 'package:balance/core/database/database.dart';
import 'package:balance/core/database/tables/groups.dart'; 
import 'package:balance/core/database/tables/transactions.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'transactions_dao.g.dart';

@lazySingleton
@DriftAccessor(tables: [Groups, Transactions])
class TransactionsDao extends DatabaseAccessor<Database>
    with _$TransactionsDaoMixin {
  TransactionsDao(super.db);

  Future insertTransaction(DateTime createdAt, String groupID, int amt, bool income) {
    return into(transactions).insert(TransactionsCompanion.insert(
        id: const Uuid().v1(),
        createdAt: createdAt,
        groupId: groupID,
        incomeTrans: Value(income),
        amount: Value(amt)));
  }

  Future updateTransactionAmt(String transactionID, String groupID, int updAmt) {
    
    final companion = TransactionsCompanion(amount: Value(updAmt));
    return (update(transactions)..where((tbl) => tbl.id.equals(transactionID)))
        .write(companion);
  }

  Stream<List<Transaction>> watch() => select(transactions).watch();

  Stream<List<Transaction>> watchGroupTransactions(String groupId) {
    return (select(transactions)..where((tbl) => tbl.groupId.equals(groupId)))
        .watch();
  }

  Future<List<Transaction>> getTransactionList(String groupID) async{
    return (select(transactions)..where((tbl) => tbl.groupId.equals(groupID))).get();
  }
}

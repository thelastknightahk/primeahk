import 'package:drift/drift.dart';

class Transactions extends Table {
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime()();
  IntColumn get amount => integer().withDefault(const Constant(0))();
  BoolColumn get incomeTrans => boolean().withDefault(const Constant(false))(); 
  TextColumn get groupId => text().customConstraint('NOT NULL REFERENCES "Groups"(id) ON DELETE CASCADE')();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

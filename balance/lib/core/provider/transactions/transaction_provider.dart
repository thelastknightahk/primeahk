
import 'package:balance/core/application/transactions/trans_notifier.dart';
import 'package:balance/core/application/transactions/trans_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final transNotifierProvider =
    StateNotifierProvider<TransNotifier, TransState>((ref) {
  return TransNotifier();
});

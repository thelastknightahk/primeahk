import 'package:balance/core/models/trans_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trans_state.freezed.dart';
part 'trans_state.g.dart';

@freezed
class TransState with _$TransState {

  factory TransState({
    @Default([]) List<TransModel> trasList
  }) = _TransState;

  factory TransState.fromJson(Map<String, dynamic> json) => _$TransStateFromJson(json);
}
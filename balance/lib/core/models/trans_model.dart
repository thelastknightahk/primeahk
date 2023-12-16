import 'package:freezed_annotation/freezed_annotation.dart';

part 'trans_model.freezed.dart';
part 'trans_model.g.dart';

@freezed
class TransModel with _$TransModel {

  factory TransModel({
      @Default("")  String transID, 
     DateTime? transDate,
     @Default(0) int transAmt, 
     @Default(false) bool transIncome, 
     @Default("") String transGroupID
  }) = _TransModel;

  factory TransModel.fromJson(Map<String, dynamic> json) => _$TransModelFromJson(json);
}
 
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trans_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransModel _$TransModelFromJson(Map<String, dynamic> json) {
  return _TransModel.fromJson(json);
}

/// @nodoc
mixin _$TransModel {
  String get transID => throw _privateConstructorUsedError;
  DateTime? get transDate => throw _privateConstructorUsedError;
  int get transAmt => throw _privateConstructorUsedError;
  bool get transIncome => throw _privateConstructorUsedError;
  String get transGroupID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransModelCopyWith<TransModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransModelCopyWith<$Res> {
  factory $TransModelCopyWith(
          TransModel value, $Res Function(TransModel) then) =
      _$TransModelCopyWithImpl<$Res, TransModel>;
  @useResult
  $Res call(
      {String transID,
      DateTime? transDate,
      int transAmt,
      bool transIncome,
      String transGroupID});
}

/// @nodoc
class _$TransModelCopyWithImpl<$Res, $Val extends TransModel>
    implements $TransModelCopyWith<$Res> {
  _$TransModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transID = null,
    Object? transDate = freezed,
    Object? transAmt = null,
    Object? transIncome = null,
    Object? transGroupID = null,
  }) {
    return _then(_value.copyWith(
      transID: null == transID
          ? _value.transID
          : transID // ignore: cast_nullable_to_non_nullable
              as String,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transAmt: null == transAmt
          ? _value.transAmt
          : transAmt // ignore: cast_nullable_to_non_nullable
              as int,
      transIncome: null == transIncome
          ? _value.transIncome
          : transIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      transGroupID: null == transGroupID
          ? _value.transGroupID
          : transGroupID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransModelImplCopyWith<$Res>
    implements $TransModelCopyWith<$Res> {
  factory _$$TransModelImplCopyWith(
          _$TransModelImpl value, $Res Function(_$TransModelImpl) then) =
      __$$TransModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transID,
      DateTime? transDate,
      int transAmt,
      bool transIncome,
      String transGroupID});
}

/// @nodoc
class __$$TransModelImplCopyWithImpl<$Res>
    extends _$TransModelCopyWithImpl<$Res, _$TransModelImpl>
    implements _$$TransModelImplCopyWith<$Res> {
  __$$TransModelImplCopyWithImpl(
      _$TransModelImpl _value, $Res Function(_$TransModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transID = null,
    Object? transDate = freezed,
    Object? transAmt = null,
    Object? transIncome = null,
    Object? transGroupID = null,
  }) {
    return _then(_$TransModelImpl(
      transID: null == transID
          ? _value.transID
          : transID // ignore: cast_nullable_to_non_nullable
              as String,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      transAmt: null == transAmt
          ? _value.transAmt
          : transAmt // ignore: cast_nullable_to_non_nullable
              as int,
      transIncome: null == transIncome
          ? _value.transIncome
          : transIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      transGroupID: null == transGroupID
          ? _value.transGroupID
          : transGroupID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransModelImpl implements _TransModel {
  _$TransModelImpl(
      {this.transID = "",
      this.transDate,
      this.transAmt = 0,
      this.transIncome = false,
      this.transGroupID = ""});

  factory _$TransModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransModelImplFromJson(json);

  @override
  @JsonKey()
  final String transID;
  @override
  final DateTime? transDate;
  @override
  @JsonKey()
  final int transAmt;
  @override
  @JsonKey()
  final bool transIncome;
  @override
  @JsonKey()
  final String transGroupID;

  @override
  String toString() {
    return 'TransModel(transID: $transID, transDate: $transDate, transAmt: $transAmt, transIncome: $transIncome, transGroupID: $transGroupID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransModelImpl &&
            (identical(other.transID, transID) || other.transID == transID) &&
            (identical(other.transDate, transDate) ||
                other.transDate == transDate) &&
            (identical(other.transAmt, transAmt) ||
                other.transAmt == transAmt) &&
            (identical(other.transIncome, transIncome) ||
                other.transIncome == transIncome) &&
            (identical(other.transGroupID, transGroupID) ||
                other.transGroupID == transGroupID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, transID, transDate, transAmt, transIncome, transGroupID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransModelImplCopyWith<_$TransModelImpl> get copyWith =>
      __$$TransModelImplCopyWithImpl<_$TransModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransModelImplToJson(
      this,
    );
  }
}

abstract class _TransModel implements TransModel {
  factory _TransModel(
      {final String transID,
      final DateTime? transDate,
      final int transAmt,
      final bool transIncome,
      final String transGroupID}) = _$TransModelImpl;

  factory _TransModel.fromJson(Map<String, dynamic> json) =
      _$TransModelImpl.fromJson;

  @override
  String get transID;
  @override
  DateTime? get transDate;
  @override
  int get transAmt;
  @override
  bool get transIncome;
  @override
  String get transGroupID;
  @override
  @JsonKey(ignore: true)
  _$$TransModelImplCopyWith<_$TransModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

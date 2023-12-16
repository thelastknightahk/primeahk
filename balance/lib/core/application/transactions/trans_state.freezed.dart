// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trans_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransState _$TransStateFromJson(Map<String, dynamic> json) {
  return _TransState.fromJson(json);
}

/// @nodoc
mixin _$TransState {
  List<TransModel> get trasList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransStateCopyWith<TransState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransStateCopyWith<$Res> {
  factory $TransStateCopyWith(
          TransState value, $Res Function(TransState) then) =
      _$TransStateCopyWithImpl<$Res, TransState>;
  @useResult
  $Res call({List<TransModel> trasList});
}

/// @nodoc
class _$TransStateCopyWithImpl<$Res, $Val extends TransState>
    implements $TransStateCopyWith<$Res> {
  _$TransStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trasList = null,
  }) {
    return _then(_value.copyWith(
      trasList: null == trasList
          ? _value.trasList
          : trasList // ignore: cast_nullable_to_non_nullable
              as List<TransModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransStateImplCopyWith<$Res>
    implements $TransStateCopyWith<$Res> {
  factory _$$TransStateImplCopyWith(
          _$TransStateImpl value, $Res Function(_$TransStateImpl) then) =
      __$$TransStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransModel> trasList});
}

/// @nodoc
class __$$TransStateImplCopyWithImpl<$Res>
    extends _$TransStateCopyWithImpl<$Res, _$TransStateImpl>
    implements _$$TransStateImplCopyWith<$Res> {
  __$$TransStateImplCopyWithImpl(
      _$TransStateImpl _value, $Res Function(_$TransStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trasList = null,
  }) {
    return _then(_$TransStateImpl(
      trasList: null == trasList
          ? _value._trasList
          : trasList // ignore: cast_nullable_to_non_nullable
              as List<TransModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransStateImpl implements _TransState {
  _$TransStateImpl({final List<TransModel> trasList = const []})
      : _trasList = trasList;

  factory _$TransStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransStateImplFromJson(json);

  final List<TransModel> _trasList;
  @override
  @JsonKey()
  List<TransModel> get trasList {
    if (_trasList is EqualUnmodifiableListView) return _trasList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trasList);
  }

  @override
  String toString() {
    return 'TransState(trasList: $trasList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransStateImpl &&
            const DeepCollectionEquality().equals(other._trasList, _trasList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trasList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransStateImplCopyWith<_$TransStateImpl> get copyWith =>
      __$$TransStateImplCopyWithImpl<_$TransStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransStateImplToJson(
      this,
    );
  }
}

abstract class _TransState implements TransState {
  factory _TransState({final List<TransModel> trasList}) = _$TransStateImpl;

  factory _TransState.fromJson(Map<String, dynamic> json) =
      _$TransStateImpl.fromJson;

  @override
  List<TransModel> get trasList;
  @override
  @JsonKey(ignore: true)
  _$$TransStateImplCopyWith<_$TransStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

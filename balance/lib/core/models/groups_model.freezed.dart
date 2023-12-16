// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupsModel _$GroupsModelFromJson(Map<String, dynamic> json) {
  return _GroupsModel.fromJson(json);
}

/// @nodoc
mixin _$GroupsModel {
  String? get groupID => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  int get groupBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsModelCopyWith<GroupsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsModelCopyWith<$Res> {
  factory $GroupsModelCopyWith(
          GroupsModel value, $Res Function(GroupsModel) then) =
      _$GroupsModelCopyWithImpl<$Res, GroupsModel>;
  @useResult
  $Res call({String? groupID, String groupName, int groupBalance});
}

/// @nodoc
class _$GroupsModelCopyWithImpl<$Res, $Val extends GroupsModel>
    implements $GroupsModelCopyWith<$Res> {
  _$GroupsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupID = freezed,
    Object? groupName = null,
    Object? groupBalance = null,
  }) {
    return _then(_value.copyWith(
      groupID: freezed == groupID
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupBalance: null == groupBalance
          ? _value.groupBalance
          : groupBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupsModelImplCopyWith<$Res>
    implements $GroupsModelCopyWith<$Res> {
  factory _$$GroupsModelImplCopyWith(
          _$GroupsModelImpl value, $Res Function(_$GroupsModelImpl) then) =
      __$$GroupsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? groupID, String groupName, int groupBalance});
}

/// @nodoc
class __$$GroupsModelImplCopyWithImpl<$Res>
    extends _$GroupsModelCopyWithImpl<$Res, _$GroupsModelImpl>
    implements _$$GroupsModelImplCopyWith<$Res> {
  __$$GroupsModelImplCopyWithImpl(
      _$GroupsModelImpl _value, $Res Function(_$GroupsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupID = freezed,
    Object? groupName = null,
    Object? groupBalance = null,
  }) {
    return _then(_$GroupsModelImpl(
      groupID: freezed == groupID
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupBalance: null == groupBalance
          ? _value.groupBalance
          : groupBalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupsModelImpl implements _GroupsModel {
  _$GroupsModelImpl(
      {this.groupID = "", required this.groupName, this.groupBalance = 0});

  factory _$GroupsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupsModelImplFromJson(json);

  @override
  @JsonKey()
  final String? groupID;
  @override
  final String groupName;
  @override
  @JsonKey()
  final int groupBalance;

  @override
  String toString() {
    return 'GroupsModel(groupID: $groupID, groupName: $groupName, groupBalance: $groupBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsModelImpl &&
            (identical(other.groupID, groupID) || other.groupID == groupID) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupBalance, groupBalance) ||
                other.groupBalance == groupBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groupID, groupName, groupBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsModelImplCopyWith<_$GroupsModelImpl> get copyWith =>
      __$$GroupsModelImplCopyWithImpl<_$GroupsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupsModelImplToJson(
      this,
    );
  }
}

abstract class _GroupsModel implements GroupsModel {
  factory _GroupsModel(
      {final String? groupID,
      required final String groupName,
      final int groupBalance}) = _$GroupsModelImpl;

  factory _GroupsModel.fromJson(Map<String, dynamic> json) =
      _$GroupsModelImpl.fromJson;

  @override
  String? get groupID;
  @override
  String get groupName;
  @override
  int get groupBalance;
  @override
  @JsonKey(ignore: true)
  _$$GroupsModelImplCopyWith<_$GroupsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

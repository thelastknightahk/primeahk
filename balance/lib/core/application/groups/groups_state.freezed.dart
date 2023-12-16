// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'groups_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupsState _$GroupsStateFromJson(Map<String, dynamic> json) {
  return _GroupsState.fromJson(json);
}

/// @nodoc
mixin _$GroupsState {
  List<GroupsModel> get groupList => throw _privateConstructorUsedError;
  GroupsModel? get groupsModel => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsStateCopyWith<GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res, GroupsState>;
  @useResult
  $Res call(
      {List<GroupsModel> groupList, GroupsModel? groupsModel, int balance});

  $GroupsModelCopyWith<$Res>? get groupsModel;
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res, $Val extends GroupsState>
    implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
    Object? groupsModel = freezed,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      groupList: null == groupList
          ? _value.groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupsModel>,
      groupsModel: freezed == groupsModel
          ? _value.groupsModel
          : groupsModel // ignore: cast_nullable_to_non_nullable
              as GroupsModel?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupsModelCopyWith<$Res>? get groupsModel {
    if (_value.groupsModel == null) {
      return null;
    }

    return $GroupsModelCopyWith<$Res>(_value.groupsModel!, (value) {
      return _then(_value.copyWith(groupsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupsStateImplCopyWith<$Res>
    implements $GroupsStateCopyWith<$Res> {
  factory _$$GroupsStateImplCopyWith(
          _$GroupsStateImpl value, $Res Function(_$GroupsStateImpl) then) =
      __$$GroupsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GroupsModel> groupList, GroupsModel? groupsModel, int balance});

  @override
  $GroupsModelCopyWith<$Res>? get groupsModel;
}

/// @nodoc
class __$$GroupsStateImplCopyWithImpl<$Res>
    extends _$GroupsStateCopyWithImpl<$Res, _$GroupsStateImpl>
    implements _$$GroupsStateImplCopyWith<$Res> {
  __$$GroupsStateImplCopyWithImpl(
      _$GroupsStateImpl _value, $Res Function(_$GroupsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
    Object? groupsModel = freezed,
    Object? balance = null,
  }) {
    return _then(_$GroupsStateImpl(
      groupList: null == groupList
          ? _value._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupsModel>,
      groupsModel: freezed == groupsModel
          ? _value.groupsModel
          : groupsModel // ignore: cast_nullable_to_non_nullable
              as GroupsModel?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupsStateImpl implements _GroupsState {
  _$GroupsStateImpl(
      {final List<GroupsModel> groupList = const [],
      this.groupsModel,
      this.balance = 0})
      : _groupList = groupList;

  factory _$GroupsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupsStateImplFromJson(json);

  final List<GroupsModel> _groupList;
  @override
  @JsonKey()
  List<GroupsModel> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  @override
  final GroupsModel? groupsModel;
  @override
  @JsonKey()
  final int balance;

  @override
  String toString() {
    return 'GroupsState(groupList: $groupList, groupsModel: $groupsModel, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList) &&
            (identical(other.groupsModel, groupsModel) ||
                other.groupsModel == groupsModel) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_groupList), groupsModel, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupsStateImplCopyWith<_$GroupsStateImpl> get copyWith =>
      __$$GroupsStateImplCopyWithImpl<_$GroupsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupsStateImplToJson(
      this,
    );
  }
}

abstract class _GroupsState implements GroupsState {
  factory _GroupsState(
      {final List<GroupsModel> groupList,
      final GroupsModel? groupsModel,
      final int balance}) = _$GroupsStateImpl;

  factory _GroupsState.fromJson(Map<String, dynamic> json) =
      _$GroupsStateImpl.fromJson;

  @override
  List<GroupsModel> get groupList;
  @override
  GroupsModel? get groupsModel;
  @override
  int get balance;
  @override
  @JsonKey(ignore: true)
  _$$GroupsStateImplCopyWith<_$GroupsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

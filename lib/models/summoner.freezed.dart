// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'summoner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Summoner _$SummonerFromJson(Map<String, dynamic> json) {
  return _Summoner.fromJson(json);
}

/// @nodoc
mixin _$Summoner {
  String get id => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String get puuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get profileIconId => throw _privateConstructorUsedError;
  int get revisionDate => throw _privateConstructorUsedError;
  int get summonerLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummonerCopyWith<Summoner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummonerCopyWith<$Res> {
  factory $SummonerCopyWith(Summoner value, $Res Function(Summoner) then) =
      _$SummonerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String accountId,
      String puuid,
      String name,
      int profileIconId,
      int revisionDate,
      int summonerLevel});
}

/// @nodoc
class _$SummonerCopyWithImpl<$Res> implements $SummonerCopyWith<$Res> {
  _$SummonerCopyWithImpl(this._value, this._then);

  final Summoner _value;
  // ignore: unused_field
  final $Res Function(Summoner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? puuid = freezed,
    Object? name = freezed,
    Object? profileIconId = freezed,
    Object? revisionDate = freezed,
    Object? summonerLevel = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      puuid: puuid == freezed
          ? _value.puuid
          : puuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileIconId: profileIconId == freezed
          ? _value.profileIconId
          : profileIconId // ignore: cast_nullable_to_non_nullable
              as int,
      revisionDate: revisionDate == freezed
          ? _value.revisionDate
          : revisionDate // ignore: cast_nullable_to_non_nullable
              as int,
      summonerLevel: summonerLevel == freezed
          ? _value.summonerLevel
          : summonerLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SummonerCopyWith<$Res> implements $SummonerCopyWith<$Res> {
  factory _$$_SummonerCopyWith(
          _$_Summoner value, $Res Function(_$_Summoner) then) =
      __$$_SummonerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String accountId,
      String puuid,
      String name,
      int profileIconId,
      int revisionDate,
      int summonerLevel});
}

/// @nodoc
class __$$_SummonerCopyWithImpl<$Res> extends _$SummonerCopyWithImpl<$Res>
    implements _$$_SummonerCopyWith<$Res> {
  __$$_SummonerCopyWithImpl(
      _$_Summoner _value, $Res Function(_$_Summoner) _then)
      : super(_value, (v) => _then(v as _$_Summoner));

  @override
  _$_Summoner get _value => super._value as _$_Summoner;

  @override
  $Res call({
    Object? id = freezed,
    Object? accountId = freezed,
    Object? puuid = freezed,
    Object? name = freezed,
    Object? profileIconId = freezed,
    Object? revisionDate = freezed,
    Object? summonerLevel = freezed,
  }) {
    return _then(_$_Summoner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      puuid: puuid == freezed
          ? _value.puuid
          : puuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileIconId: profileIconId == freezed
          ? _value.profileIconId
          : profileIconId // ignore: cast_nullable_to_non_nullable
              as int,
      revisionDate: revisionDate == freezed
          ? _value.revisionDate
          : revisionDate // ignore: cast_nullable_to_non_nullable
              as int,
      summonerLevel: summonerLevel == freezed
          ? _value.summonerLevel
          : summonerLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Summoner implements _Summoner {
  const _$_Summoner(
      {required this.id,
      required this.accountId,
      required this.puuid,
      required this.name,
      required this.profileIconId,
      required this.revisionDate,
      required this.summonerLevel});

  factory _$_Summoner.fromJson(Map<String, dynamic> json) =>
      _$$_SummonerFromJson(json);

  @override
  final String id;
  @override
  final String accountId;
  @override
  final String puuid;
  @override
  final String name;
  @override
  final int profileIconId;
  @override
  final int revisionDate;
  @override
  final int summonerLevel;

  @override
  String toString() {
    return 'Summoner(id: $id, accountId: $accountId, puuid: $puuid, name: $name, profileIconId: $profileIconId, revisionDate: $revisionDate, summonerLevel: $summonerLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Summoner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality().equals(other.puuid, puuid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.profileIconId, profileIconId) &&
            const DeepCollectionEquality()
                .equals(other.revisionDate, revisionDate) &&
            const DeepCollectionEquality()
                .equals(other.summonerLevel, summonerLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(puuid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(profileIconId),
      const DeepCollectionEquality().hash(revisionDate),
      const DeepCollectionEquality().hash(summonerLevel));

  @JsonKey(ignore: true)
  @override
  _$$_SummonerCopyWith<_$_Summoner> get copyWith =>
      __$$_SummonerCopyWithImpl<_$_Summoner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummonerToJson(
      this,
    );
  }
}

abstract class _Summoner implements Summoner {
  const factory _Summoner(
      {required final String id,
      required final String accountId,
      required final String puuid,
      required final String name,
      required final int profileIconId,
      required final int revisionDate,
      required final int summonerLevel}) = _$_Summoner;

  factory _Summoner.fromJson(Map<String, dynamic> json) = _$_Summoner.fromJson;

  @override
  String get id;
  @override
  String get accountId;
  @override
  String get puuid;
  @override
  String get name;
  @override
  int get profileIconId;
  @override
  int get revisionDate;
  @override
  int get summonerLevel;
  @override
  @JsonKey(ignore: true)
  _$$_SummonerCopyWith<_$_Summoner> get copyWith =>
      throw _privateConstructorUsedError;
}

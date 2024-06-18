// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Client _$ClientFromJson(Map<String, dynamic> json) {
  return _Client.fromJson(json);
}

/// @nodoc
mixin _$Client {
  @JsonKey(name: 'id')
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get clientUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'connected_at')
  DateTime get connectedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  int get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCopyWith<$Res> {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) =
      _$ClientCopyWithImpl<$Res, Client>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int clientId,
      @JsonKey(name: 'username') String clientUsername,
      @JsonKey(name: 'connected_at') DateTime connectedAt,
      @JsonKey(name: 'room_id') int roomId});
}

/// @nodoc
class _$ClientCopyWithImpl<$Res, $Val extends Client>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? clientUsername = null,
    Object? connectedAt = null,
    Object? roomId = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      clientUsername: null == clientUsername
          ? _value.clientUsername
          : clientUsername // ignore: cast_nullable_to_non_nullable
              as String,
      connectedAt: null == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientImplCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$$ClientImplCopyWith(
          _$ClientImpl value, $Res Function(_$ClientImpl) then) =
      __$$ClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int clientId,
      @JsonKey(name: 'username') String clientUsername,
      @JsonKey(name: 'connected_at') DateTime connectedAt,
      @JsonKey(name: 'room_id') int roomId});
}

/// @nodoc
class __$$ClientImplCopyWithImpl<$Res>
    extends _$ClientCopyWithImpl<$Res, _$ClientImpl>
    implements _$$ClientImplCopyWith<$Res> {
  __$$ClientImplCopyWithImpl(
      _$ClientImpl _value, $Res Function(_$ClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? clientUsername = null,
    Object? connectedAt = null,
    Object? roomId = null,
  }) {
    return _then(_$ClientImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      clientUsername: null == clientUsername
          ? _value.clientUsername
          : clientUsername // ignore: cast_nullable_to_non_nullable
              as String,
      connectedAt: null == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientImpl implements _Client {
  _$ClientImpl(
      {@JsonKey(name: 'id') required this.clientId,
      @JsonKey(name: 'username') required this.clientUsername,
      @JsonKey(name: 'connected_at') required this.connectedAt,
      @JsonKey(name: 'room_id') required this.roomId});

  factory _$ClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int clientId;
  @override
  @JsonKey(name: 'username')
  final String clientUsername;
  @override
  @JsonKey(name: 'connected_at')
  final DateTime connectedAt;
  @override
  @JsonKey(name: 'room_id')
  final int roomId;

  @override
  String toString() {
    return 'Client(clientId: $clientId, clientUsername: $clientUsername, connectedAt: $connectedAt, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientImpl &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientUsername, clientUsername) ||
                other.clientUsername == clientUsername) &&
            (identical(other.connectedAt, connectedAt) ||
                other.connectedAt == connectedAt) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clientId, clientUsername, connectedAt, roomId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      __$$ClientImplCopyWithImpl<_$ClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientImplToJson(
      this,
    );
  }
}

abstract class _Client implements Client {
  factory _Client(
      {@JsonKey(name: 'id') required final int clientId,
      @JsonKey(name: 'username') required final String clientUsername,
      @JsonKey(name: 'connected_at') required final DateTime connectedAt,
      @JsonKey(name: 'room_id') required final int roomId}) = _$ClientImpl;

  factory _Client.fromJson(Map<String, dynamic> json) = _$ClientImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get clientId;
  @override
  @JsonKey(name: 'username')
  String get clientUsername;
  @override
  @JsonKey(name: 'connected_at')
  DateTime get connectedAt;
  @override
  @JsonKey(name: 'room_id')
  int get roomId;
  @override
  @JsonKey(ignore: true)
  _$$ClientImplCopyWith<_$ClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

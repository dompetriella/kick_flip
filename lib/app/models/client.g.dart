// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientImpl _$$ClientImplFromJson(Map<String, dynamic> json) => _$ClientImpl(
      clientId: (json['id'] as num).toInt(),
      clientUsername: json['username'] as String,
      connectedAt: DateTime.parse(json['connected_at'] as String),
      roomCode: json['room_code'] as String,
    );

Map<String, dynamic> _$$ClientImplToJson(_$ClientImpl instance) =>
    <String, dynamic>{
      'id': instance.clientId,
      'username': instance.clientUsername,
      'connected_at': instance.connectedAt.toIso8601String(),
      'room_code': instance.roomCode,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@freezed
class Client with _$Client {
  factory Client(
      {@JsonKey(name: 'id') required int clientId,
      @JsonKey(name: 'username') required String clientUsername,
      @JsonKey(name: 'connected_at') required DateTime connectedAt,
      @JsonKey(name: 'room_id') required int roomId}) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

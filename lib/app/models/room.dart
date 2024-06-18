import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  factory Room(
      {@JsonKey(name: 'id') required int roomId,
      @JsonKey(name: 'room_code') required String roomCode,
      @JsonKey(name: 'created_at') required DateTime createdAt}) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

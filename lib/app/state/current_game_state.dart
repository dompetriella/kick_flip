import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kick_flip/app/models/room.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_game_state.freezed.dart';
part 'current_game_state.g.dart';

@freezed
class CurrentGameStateData with _$CurrentGameStateData {
  factory CurrentGameStateData(
      {@Default(0) int counter,
      @Default(null) Room? room}) = _CurrentGameStateData;
}

@Riverpod(keepAlive: true)
class CurrentGameState extends _$CurrentGameState {
  @override
  CurrentGameStateData build() {
    return CurrentGameStateData();
  }

  void setCurrentRoom(Room room) {
    state = state.copyWith(room: room);
  }

  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }
}

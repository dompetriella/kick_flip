// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentGameStateData {
  int get counter => throw _privateConstructorUsedError;
  Room? get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentGameStateDataCopyWith<CurrentGameStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentGameStateDataCopyWith<$Res> {
  factory $CurrentGameStateDataCopyWith(CurrentGameStateData value,
          $Res Function(CurrentGameStateData) then) =
      _$CurrentGameStateDataCopyWithImpl<$Res, CurrentGameStateData>;
  @useResult
  $Res call({int counter, Room? room});

  $RoomCopyWith<$Res>? get room;
}

/// @nodoc
class _$CurrentGameStateDataCopyWithImpl<$Res,
        $Val extends CurrentGameStateData>
    implements $CurrentGameStateDataCopyWith<$Res> {
  _$CurrentGameStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentGameStateDataImplCopyWith<$Res>
    implements $CurrentGameStateDataCopyWith<$Res> {
  factory _$$CurrentGameStateDataImplCopyWith(_$CurrentGameStateDataImpl value,
          $Res Function(_$CurrentGameStateDataImpl) then) =
      __$$CurrentGameStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, Room? room});

  @override
  $RoomCopyWith<$Res>? get room;
}

/// @nodoc
class __$$CurrentGameStateDataImplCopyWithImpl<$Res>
    extends _$CurrentGameStateDataCopyWithImpl<$Res, _$CurrentGameStateDataImpl>
    implements _$$CurrentGameStateDataImplCopyWith<$Res> {
  __$$CurrentGameStateDataImplCopyWithImpl(_$CurrentGameStateDataImpl _value,
      $Res Function(_$CurrentGameStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? room = freezed,
  }) {
    return _then(_$CurrentGameStateDataImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
    ));
  }
}

/// @nodoc

class _$CurrentGameStateDataImpl implements _CurrentGameStateData {
  _$CurrentGameStateDataImpl({this.counter = 0, this.room = null});

  @override
  @JsonKey()
  final int counter;
  @override
  @JsonKey()
  final Room? room;

  @override
  String toString() {
    return 'CurrentGameStateData(counter: $counter, room: $room)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentGameStateDataImpl &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentGameStateDataImplCopyWith<_$CurrentGameStateDataImpl>
      get copyWith =>
          __$$CurrentGameStateDataImplCopyWithImpl<_$CurrentGameStateDataImpl>(
              this, _$identity);
}

abstract class _CurrentGameStateData implements CurrentGameStateData {
  factory _CurrentGameStateData({final int counter, final Room? room}) =
      _$CurrentGameStateDataImpl;

  @override
  int get counter;
  @override
  Room? get room;
  @override
  @JsonKey(ignore: true)
  _$$CurrentGameStateDataImplCopyWith<_$CurrentGameStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

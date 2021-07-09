// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceListEventTearOff {
  const _$DeviceListEventTearOff();

  _Toggle toggle(bool value) {
    return _Toggle(
      value,
    );
  }

  _Started started() {
    return const _Started();
  }

  _BluetoothIsOn bluetoothIsOn() {
    return const _BluetoothIsOn();
  }

  _Timer timer() {
    return const _Timer();
  }
}

/// @nodoc
const $DeviceListEvent = _$DeviceListEventTearOff();

/// @nodoc
mixin _$DeviceListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggle,
    required TResult Function() started,
    required TResult Function() bluetoothIsOn,
    required TResult Function() timer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggle,
    TResult Function()? started,
    TResult Function()? bluetoothIsOn,
    TResult Function()? timer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
    required TResult Function(_Started value) started,
    required TResult Function(_BluetoothIsOn value) bluetoothIsOn,
    required TResult Function(_Timer value) timer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    TResult Function(_Started value)? started,
    TResult Function(_BluetoothIsOn value)? bluetoothIsOn,
    TResult Function(_Timer value)? timer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListEventCopyWith<$Res> {
  factory $DeviceListEventCopyWith(
          DeviceListEvent value, $Res Function(DeviceListEvent) then) =
      _$DeviceListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceListEventCopyWithImpl<$Res>
    implements $DeviceListEventCopyWith<$Res> {
  _$DeviceListEventCopyWithImpl(this._value, this._then);

  final DeviceListEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceListEvent) _then;
}

/// @nodoc
abstract class _$ToggleCopyWith<$Res> {
  factory _$ToggleCopyWith(_Toggle value, $Res Function(_Toggle) then) =
      __$ToggleCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$ToggleCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements _$ToggleCopyWith<$Res> {
  __$ToggleCopyWithImpl(_Toggle _value, $Res Function(_Toggle) _then)
      : super(_value, (v) => _then(v as _Toggle));

  @override
  _Toggle get _value => super._value as _Toggle;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Toggle(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Toggle implements _Toggle {
  const _$_Toggle(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'DeviceListEvent.toggle(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Toggle &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ToggleCopyWith<_Toggle> get copyWith =>
      __$ToggleCopyWithImpl<_Toggle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggle,
    required TResult Function() started,
    required TResult Function() bluetoothIsOn,
    required TResult Function() timer,
  }) {
    return toggle(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggle,
    TResult Function()? started,
    TResult Function()? bluetoothIsOn,
    TResult Function()? timer,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
    required TResult Function(_Started value) started,
    required TResult Function(_BluetoothIsOn value) bluetoothIsOn,
    required TResult Function(_Timer value) timer,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    TResult Function(_Started value)? started,
    TResult Function(_BluetoothIsOn value)? bluetoothIsOn,
    TResult Function(_Timer value)? timer,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _Toggle implements DeviceListEvent {
  const factory _Toggle(bool value) = _$_Toggle;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ToggleCopyWith<_Toggle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DeviceListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggle,
    required TResult Function() started,
    required TResult Function() bluetoothIsOn,
    required TResult Function() timer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggle,
    TResult Function()? started,
    TResult Function()? bluetoothIsOn,
    TResult Function()? timer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
    required TResult Function(_Started value) started,
    required TResult Function(_BluetoothIsOn value) bluetoothIsOn,
    required TResult Function(_Timer value) timer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    TResult Function(_Started value)? started,
    TResult Function(_BluetoothIsOn value)? bluetoothIsOn,
    TResult Function(_Timer value)? timer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DeviceListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$BluetoothIsOnCopyWith<$Res> {
  factory _$BluetoothIsOnCopyWith(
          _BluetoothIsOn value, $Res Function(_BluetoothIsOn) then) =
      __$BluetoothIsOnCopyWithImpl<$Res>;
}

/// @nodoc
class __$BluetoothIsOnCopyWithImpl<$Res>
    extends _$DeviceListEventCopyWithImpl<$Res>
    implements _$BluetoothIsOnCopyWith<$Res> {
  __$BluetoothIsOnCopyWithImpl(
      _BluetoothIsOn _value, $Res Function(_BluetoothIsOn) _then)
      : super(_value, (v) => _then(v as _BluetoothIsOn));

  @override
  _BluetoothIsOn get _value => super._value as _BluetoothIsOn;
}

/// @nodoc

class _$_BluetoothIsOn implements _BluetoothIsOn {
  const _$_BluetoothIsOn();

  @override
  String toString() {
    return 'DeviceListEvent.bluetoothIsOn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BluetoothIsOn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggle,
    required TResult Function() started,
    required TResult Function() bluetoothIsOn,
    required TResult Function() timer,
  }) {
    return bluetoothIsOn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggle,
    TResult Function()? started,
    TResult Function()? bluetoothIsOn,
    TResult Function()? timer,
    required TResult orElse(),
  }) {
    if (bluetoothIsOn != null) {
      return bluetoothIsOn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
    required TResult Function(_Started value) started,
    required TResult Function(_BluetoothIsOn value) bluetoothIsOn,
    required TResult Function(_Timer value) timer,
  }) {
    return bluetoothIsOn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    TResult Function(_Started value)? started,
    TResult Function(_BluetoothIsOn value)? bluetoothIsOn,
    TResult Function(_Timer value)? timer,
    required TResult orElse(),
  }) {
    if (bluetoothIsOn != null) {
      return bluetoothIsOn(this);
    }
    return orElse();
  }
}

abstract class _BluetoothIsOn implements DeviceListEvent {
  const factory _BluetoothIsOn() = _$_BluetoothIsOn;
}

/// @nodoc
abstract class _$TimerCopyWith<$Res> {
  factory _$TimerCopyWith(_Timer value, $Res Function(_Timer) then) =
      __$TimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$TimerCopyWithImpl<$Res> extends _$DeviceListEventCopyWithImpl<$Res>
    implements _$TimerCopyWith<$Res> {
  __$TimerCopyWithImpl(_Timer _value, $Res Function(_Timer) _then)
      : super(_value, (v) => _then(v as _Timer));

  @override
  _Timer get _value => super._value as _Timer;
}

/// @nodoc

class _$_Timer implements _Timer {
  const _$_Timer();

  @override
  String toString() {
    return 'DeviceListEvent.timer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Timer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggle,
    required TResult Function() started,
    required TResult Function() bluetoothIsOn,
    required TResult Function() timer,
  }) {
    return timer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggle,
    TResult Function()? started,
    TResult Function()? bluetoothIsOn,
    TResult Function()? timer,
    required TResult orElse(),
  }) {
    if (timer != null) {
      return timer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Toggle value) toggle,
    required TResult Function(_Started value) started,
    required TResult Function(_BluetoothIsOn value) bluetoothIsOn,
    required TResult Function(_Timer value) timer,
  }) {
    return timer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Toggle value)? toggle,
    TResult Function(_Started value)? started,
    TResult Function(_BluetoothIsOn value)? bluetoothIsOn,
    TResult Function(_Timer value)? timer,
    required TResult orElse(),
  }) {
    if (timer != null) {
      return timer(this);
    }
    return orElse();
  }
}

abstract class _Timer implements DeviceListEvent {
  const factory _Timer() = _$_Timer;
}

/// @nodoc
class _$DeviceListStateTearOff {
  const _$DeviceListStateTearOff();

  _DeviceListState call(
      {required bool isActive,
      required List<dynamic> deviceName,
      required bool loader}) {
    return _DeviceListState(
      isActive: isActive,
      deviceName: deviceName,
      loader: loader,
    );
  }
}

/// @nodoc
const $DeviceListState = _$DeviceListStateTearOff();

/// @nodoc
mixin _$DeviceListState {
  bool get isActive => throw _privateConstructorUsedError;
  List<dynamic> get deviceName => throw _privateConstructorUsedError;
  bool get loader => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceListStateCopyWith<DeviceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceListStateCopyWith<$Res> {
  factory $DeviceListStateCopyWith(
          DeviceListState value, $Res Function(DeviceListState) then) =
      _$DeviceListStateCopyWithImpl<$Res>;
  $Res call({bool isActive, List<dynamic> deviceName, bool loader});
}

/// @nodoc
class _$DeviceListStateCopyWithImpl<$Res>
    implements $DeviceListStateCopyWith<$Res> {
  _$DeviceListStateCopyWithImpl(this._value, this._then);

  final DeviceListState _value;
  // ignore: unused_field
  final $Res Function(DeviceListState) _then;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? deviceName = freezed,
    Object? loader = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      loader: loader == freezed
          ? _value.loader
          : loader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DeviceListStateCopyWith<$Res>
    implements $DeviceListStateCopyWith<$Res> {
  factory _$DeviceListStateCopyWith(
          _DeviceListState value, $Res Function(_DeviceListState) then) =
      __$DeviceListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isActive, List<dynamic> deviceName, bool loader});
}

/// @nodoc
class __$DeviceListStateCopyWithImpl<$Res>
    extends _$DeviceListStateCopyWithImpl<$Res>
    implements _$DeviceListStateCopyWith<$Res> {
  __$DeviceListStateCopyWithImpl(
      _DeviceListState _value, $Res Function(_DeviceListState) _then)
      : super(_value, (v) => _then(v as _DeviceListState));

  @override
  _DeviceListState get _value => super._value as _DeviceListState;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? deviceName = freezed,
    Object? loader = freezed,
  }) {
    return _then(_DeviceListState(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      loader: loader == freezed
          ? _value.loader
          : loader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DeviceListState implements _DeviceListState {
  const _$_DeviceListState(
      {required this.isActive, required this.deviceName, required this.loader});

  @override
  final bool isActive;
  @override
  final List<dynamic> deviceName;
  @override
  final bool loader;

  @override
  String toString() {
    return 'DeviceListState(isActive: $isActive, deviceName: $deviceName, loader: $loader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceListState &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.loader, loader) ||
                const DeepCollectionEquality().equals(other.loader, loader)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(loader);

  @JsonKey(ignore: true)
  @override
  _$DeviceListStateCopyWith<_DeviceListState> get copyWith =>
      __$DeviceListStateCopyWithImpl<_DeviceListState>(this, _$identity);
}

abstract class _DeviceListState implements DeviceListState {
  const factory _DeviceListState(
      {required bool isActive,
      required List<dynamic> deviceName,
      required bool loader}) = _$_DeviceListState;

  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  List<dynamic> get deviceName => throw _privateConstructorUsedError;
  @override
  bool get loader => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceListStateCopyWith<_DeviceListState> get copyWith =>
      throw _privateConstructorUsedError;
}

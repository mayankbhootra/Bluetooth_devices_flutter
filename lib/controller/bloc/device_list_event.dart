part of 'device_list_bloc.dart';

@freezed
abstract class DeviceListEvent with _$DeviceListEvent {
  const factory DeviceListEvent.toggle(bool value) = _Toggle;
  const factory DeviceListEvent.started() = _Started;
  const factory DeviceListEvent.bluetoothIsOn() = _BluetoothIsOn;
  const factory DeviceListEvent.timer() = _Timer;
}

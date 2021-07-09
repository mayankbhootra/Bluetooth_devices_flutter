part of 'device_list_bloc.dart';

@freezed
abstract class DeviceListState with _$DeviceListState {
  const factory DeviceListState({
    required bool isActive,
    required List deviceName,
    required bool loader,
  }) = _DeviceListState;

  factory DeviceListState.initial() =>
      const DeviceListState(isActive: false, deviceName: [], loader: false);
}

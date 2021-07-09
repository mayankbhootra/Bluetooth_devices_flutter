import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_list_event.dart';
part 'device_list_state.dart';
part 'device_list_bloc.freezed.dart';

const bluetoothChannel = MethodChannel('bluetoothStatus');
const deviceListChannel = EventChannel('deviveListStatus');

class DeviceListBloc extends Bloc<DeviceListEvent, DeviceListState> {
  DeviceListBloc() : super(DeviceListState.initial());

  @override
  Stream<DeviceListState> mapEventToState(
    DeviceListEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(toggle: (e) async* {
      bluetoothChannel.invokeMethod("toggleBluetooth");
      yield state.copyWith(isActive: e.value, loader: true);

      if (e.value) {
        await Future.delayed(const Duration(seconds: 3));
        add(const DeviceListEvent.started());
      } else {
        yield state.copyWith(loader: false, isActive: false);
      }
    }, 
     started: (e) async* {
      yield state.copyWith(loader: true);
      final bool isOn =
          await bluetoothChannel.invokeMethod("getBluetoothStatus") as bool;

      yield state.copyWith(isActive: isOn);
      if (isOn) {
        add(const DeviceListEvent.bluetoothIsOn());
      } else {
        yield state.copyWith(loader: false, isActive: false);
      }
    }, bluetoothIsOn: (e) async* {
      final List deviceName =
          await bluetoothChannel.invokeMethod("getDeviceName") as List;
      yield state.copyWith(deviceName: deviceName, loader: false);
    }, timer: (e) async* {
      final bool isOn =
          await bluetoothChannel.invokeMethod("getBluetoothStatus") as bool;
      final List deviceName =
          await bluetoothChannel.invokeMethod("getDeviceName") as List;

      if (isOn != state.isActive ||
          deviceName.length != state.deviceName.length) {
        yield state.copyWith(isActive: isOn, deviceName: deviceName);
      }
      Timer(const Duration(seconds: 1), () {
        add(const DeviceListEvent.timer());
      });
    });
  }
}

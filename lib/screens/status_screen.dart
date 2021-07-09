import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/bloc/device_list_bloc.dart';
import '../widgets/device_list_item.dart';

class StatusScreenProvider extends StatelessWidget {
  const StatusScreenProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DeviceListBloc>(
      create: (ctx) => DeviceListBloc()
        ..add(const DeviceListEvent.started())
        ..add(const DeviceListEvent.timer()),
      child: StatusScreen(),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bluetooth Connections'),
        ),
        body: BlocBuilder<DeviceListBloc, DeviceListState>(
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.isActive ? "On" : "Off",
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Switch(
                        value: state.isActive,
                        onChanged: (bool value1) {
                          context
                              .read<DeviceListBloc>()
                              .add(DeviceListEvent.toggle(value1));
                        },
                      )
                    ],
                  ),
                ),
                if (state.loader)
                  const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                else
                  state.isActive
                      ? Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              context
                                  .read<DeviceListBloc>()
                                  .add(const DeviceListEvent.started());
                            },
                            child: state.deviceName.isEmpty
                                ? const Center(
                                    child: Text(
                                      "No Paired Devices Present",
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                : Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              '${state.deviceName.length} Connected Device:'),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: state.deviceName.length,
                                          itemBuilder: (ctx, index) {
                                            return DeviceListItem(
                                              id: index,
                                              name: state.deviceName[index]
                                                  as String,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        )
                      : const Expanded(
                          child: Center(
                            child: Text(
                              "Bluetooth is turned off currently\nto check the list please turn the bluetooth on",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
              ],
            );
          },
        ),
      ),
    );
  }
}

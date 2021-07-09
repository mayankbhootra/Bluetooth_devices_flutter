import 'package:flutter/material.dart';

class DeviceListItem extends StatelessWidget {
  final int id;
  final String name;
  const DeviceListItem({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                name,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: const Icon(
                Icons.bluetooth_connected,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

package com.example.assignment_ys
import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.content.Context
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    private val BLUETOOTH_CHANNEL_NAME="bluetoothStatus"

    private var methodChannel:MethodChannel?=null

    var myBluetoothAdapter: BluetoothAdapter= BluetoothAdapter.getDefaultAdapter()
    var myBluetoothDeviceList: Set<BluetoothDevice> = myBluetoothAdapter.bondedDevices
    var myBluetoothDeviceListName: List<String> = myBluetoothAdapter.bondedDevices.map { device -> device.name }
    var myBluetoothDeviceListBondState: List<Int> = myBluetoothAdapter.bondedDevices.map { device -> device.bondState }
    var isConnected=false

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        //Channels
        setupChannels(this,flutterEngine.dartExecutor.binaryMessenger)
    }
    private fun setupChannels(context: Context,messenger: BinaryMessenger) {
        methodChannel= MethodChannel(messenger,BLUETOOTH_CHANNEL_NAME)
        methodChannel!!.setMethodCallHandler { call, result ->
            if (call.method == "toggleBluetooth") {
                if(!myBluetoothAdapter.isEnabled) myBluetoothAdapter.enable()
                else myBluetoothAdapter.disable()
            } else if (call.method == "getBluetoothStatus") {
                myBluetoothAdapter= BluetoothAdapter.getDefaultAdapter()
                myBluetoothDeviceList= myBluetoothAdapter.bondedDevices
                myBluetoothDeviceListName= myBluetoothAdapter.bondedDevices.map { device -> device.name }
                myBluetoothDeviceListBondState= myBluetoothAdapter.bondedDevices.map { device -> device.bondState }
                result.success(myBluetoothAdapter.isEnabled)
            } else if (call.method == "getDeviceCount") {
                result.success(myBluetoothDeviceList.size)
            } else if (call.method == "getDeviceStatus") {
                result.success(myBluetoothDeviceListBondState)
            } else if (call.method == "getDeviceName") {
                result.success(myBluetoothDeviceListName)
            } else {
                result.notImplemented()
            }
        }
    }
    private fun teardownChannels(){
        methodChannel!!.setMethodCallHandler(null)
    }
    override fun onDestroy() {
        teardownChannels()
        super.onDestroy()
    }
}
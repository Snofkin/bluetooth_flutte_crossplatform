


import 'package:flutter/material.dart';
import 'package:quick_blue/quick_blue.dart';

class BluetoothPage extends StatefulWidget {
  const BluetoothPage({super.key});

  @override
  State<BluetoothPage> createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _scanBluetooth,child: Text("Scan"),)
          ],
        ),
      ),
    );
  }

   _scanBluetooth() async{
     QuickBlue.startScan();

     await QuickBlue.scanResultStream.listen((result) {
      print('onScanResult $result');
    });
  }
}

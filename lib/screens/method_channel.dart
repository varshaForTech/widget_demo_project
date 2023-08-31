import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_test_project/utils.dart';

class MethodChannelExample extends StatefulWidget {
  const MethodChannelExample({super.key});

  @override
  State<MethodChannelExample> createState() => _MethodChannelExampleState();
}

class _MethodChannelExampleState extends State<MethodChannelExample> {
  final platformChannel = const MethodChannel(
      'com.example.flutterwidgets.widgets_test_project/check_platform');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Method Channel',
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: Utils.ubuntuRegularFont),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color(0x000000).withOpacity(1),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: getPlatformName(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text('Platform: ${snapshot.data}');
                }
              }),
        ],
      ),
    );
  }

  Future<String> getPlatformName() async {
    try {
      final String result =
          await platformChannel.invokeMethod('getPlatformName');
      return result;
    } catch (e) {
      return 'Error getting platform name';
    }
  }
}

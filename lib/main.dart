import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/NicController.dart';
import 'screens/ResultScreen.dart';
import 'widgets/HeaderWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final NicController nicController = Get.put(NicController());
  final TextEditingController nicInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(title: "SRI LANKA NIC DECORDER"),
          SizedBox(height: 20),
          Image.asset(
            'lib/assets/HomeScreenImg.png',
            height: 250,
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: nicInputController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter NIC Number',
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              nicController.decodeNIC(nicInputController.text);
              if (nicController.isValidNIC.value) {
                Get.to(ResultScreen());
              }
            },
            child: Text("Decode"),
          ),
        ],
      ),
    );
  }
}

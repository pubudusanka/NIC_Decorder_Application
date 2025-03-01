import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/NicController.dart';
import '../widgets/HeaderWidget.dart';
import 'ResultScreen.dart';

class HomeScreen extends StatelessWidget {
  final NicController nicController = Get.put(NicController());
  final TextEditingController nicInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(title: "SRI LANKA NIC DECORDER"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: nicInputController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter NIC Number",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    nicController.decodeNIC(nicInputController.text);
                    if (nicController.isValidNIC.value) {
                      Get.to(() => ResultScreen());
                    }
                  },
                  child: Text("Decode"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
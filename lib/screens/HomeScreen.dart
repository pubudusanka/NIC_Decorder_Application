import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nic_decorder_application/controller/NicController.dart';

class HomeScreen extends StatelessWidget {
  final NicController nicController = Get.put(NicController());
  final TextEditingController nicInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  'SRI LANKA NIC DECORDER',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Image.network('https://atlas-content-cdn.pixelsquid.com/stock-images/sri-lanka-desk-flag-XlEQWJ5-600.jpg', height: 100),
              SizedBox(height: 20),
              TextField(
                controller: nicInputController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter NIC Number',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String nic = nicInputController.text;
                  nicController.decodeNIC(nic);
                  if (nicController.isValidNIC.value) {
                    Get.to(() => ResultScreen());
                  } else {
                    Get.snackbar("Invalid NIC", "Please enter a valid NIC number");
                  }
                },
                child: Text('Decode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
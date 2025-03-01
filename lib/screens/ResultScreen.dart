import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nic_decorder_application/controller/NicController.dart';

class ResultScreen extends StatelessWidget {
  final NicController nicController = Get.find();

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
                  'Details Belongs to the NIC',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/e/e6/Sri_Lanka_Flag_Lion.png', height: 100),
              SizedBox(height: 20),
              DetailField(label: "Birth Year", value: nicController.birthYear.value),
              DetailField(label: "Birth Date", value: nicController.birthDate.value),
              DetailField(label: "Week Day", value: nicController.birthDay.value),
              DetailField(label: "Age", value: nicController.age.value),
              DetailField(label: "Gender", value: nicController.gender.value),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Get.back(),
                child: Text('Back to Main'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

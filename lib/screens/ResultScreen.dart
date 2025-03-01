import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../DetailRow.dart';
import '../controller/NicController.dart';
import '../widgets/HeaderWidget.dart';

class ResultScreen extends StatelessWidget {
  final NicController nicController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderWidget(title: "Details Belongs to the NIC"),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/ResultScreenImg.png',
                    height: 150,
                  ),
                  SizedBox(height: 20),
                  DetailRow(title: "Birth Year", value: nicController.birthYear.value),
                  DetailRow(title: "Birth Date", value: nicController.birthDate.value),
                  DetailRow(title: "Week Day", value: nicController.birthDay.value),
                  DetailRow(title: "Age", value: nicController.age.value),
                  DetailRow(title: "Gender", value: nicController.gender.value),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Get.back(),
                    child: Text("Back to Main"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

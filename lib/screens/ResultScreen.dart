import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/NicController.dart';
import '../widgets/custom_header.dart';

class ResultScreen extends StatelessWidget {
  final NicController nicController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(title: "Details Belongs to the NIC"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildInfoRow("Birth Year", nicController.birthYear.value),
                buildInfoRow("Birth Date", nicController.birthDate.value),
                buildInfoRow("Week Day", nicController.birthDay.value),
                buildInfoRow("Age", nicController.age.value),
                buildInfoRow("Gender", nicController.gender.value),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Get.back(),
                  child: Text("Back to Main"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
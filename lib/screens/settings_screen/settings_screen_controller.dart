import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SettingsScreenController extends GetxController {
  void goBack() {
    Get.back();
  }
  void showDialogue() {
    Get.dialog(AlertDialog(
      title: const Text('Select Language'),
      content: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                  Get.back();
                  update();
                },
                child: const Text('English')),
            TextButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ur', 'PK'));
                  Get.back();
                  update();
                },
                child: const Text('Urdu'))
          ],
        ),
      ),
    ));
  }
}

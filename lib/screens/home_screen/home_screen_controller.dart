import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    update();
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

  @override
  void onReady() {
    showDialogue();
    super.onReady();
  }
}

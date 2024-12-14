import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChatScreenController extends GetxController {
  final TextEditingController textController = TextEditingController();

  void onChange(String? value) {
    update();
  }
}

import 'package:flutter_app/screens/chat_screen/chat_screen.dart';
import 'package:get/get.dart';

class MessageScreenController extends GetxController {
  void goToChatScreen() {
    Get.to(() => ChatScreen());
  }
}

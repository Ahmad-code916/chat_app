import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter_app/utilities/app_strings.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),
      fallbackLocale: Locale('en', 'US'),
      locale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

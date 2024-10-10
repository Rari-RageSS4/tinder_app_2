import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tinder_app_2/authentication_screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:tinder_app_2/controllers/authentication_controller.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  // initialize firebase
  await Firebase.initializeApp().then((onValue){
    Get.put(AuthenticationController());
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dating App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const LoginScreen()
    );
  }
}
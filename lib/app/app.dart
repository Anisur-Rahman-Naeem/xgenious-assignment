
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xgenious_assignment/app/controller_binder.dart';
import 'package:xgenious_assignment/features/common/ui/screens/main_bottom_nav_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainBottomNavScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}

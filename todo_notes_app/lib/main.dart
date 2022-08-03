import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:todo_notes_app/modules/getting_started_screen/get_started.dart';
import 'package:todo_notes_app/modules/notes_screen/notes.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'modules/add_tasks_screen/add_tasks.dart';
import 'modules/home_page_screen/home_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor:kPrimaryBlue,
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/NoPath - Copy (32).png',),
            SizedBox(
              width: 15,
            ),
            Text('Tasks',style: TextStyle(color: Colors.white,fontSize: 50),)
          ],
        ),
        nextScreen: HomeScreen(),
        centered: true,
        splashIconSize: double.infinity,
        backgroundColor: kPrimaryBlue,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}


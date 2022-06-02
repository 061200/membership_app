import 'package:cellove_app/presentation/chats_screen/landing_page.dart';
import 'package:cellove_app/presentation/chats_screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cellove_app/presentation/chats_screen/chats_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger App',
      theme: ThemeData(fontFamily: 'General Sans'),
      home: LandingPage(),
    );
  }
}

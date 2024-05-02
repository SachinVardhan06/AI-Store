import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gemini_ai/LoginScreens/signupscreen.dart';
import 'package:gemini_ai/firebase_options.dart';
import 'package:gemini_ai/homepage.dart';
import 'package:gemini_ai/list.dart';
import 'package:gemini_ai/login.dart';
import 'ThemeProvider/theme.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      title: 'AI Store',
      home: homepage1(),
    );
  }
}


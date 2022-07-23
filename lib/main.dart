import 'package:azkar_app/Screens/Luanch_screen.dart';
import 'package:azkar_app/Screens/home_screen.dart';
import 'package:azkar_app/Screens/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/Luanch_screen',
      routes: {
        '/Luanch_screen':(context) => const LuanchScreen(),
        '/Home_screen':(context) => const HomeScreen(),
        '/Info_screen':(context) => const InfoScreen(),
      },
    );
  }
}


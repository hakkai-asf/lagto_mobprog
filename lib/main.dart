import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagto_mobprog/screens/home_screen.dart';
import 'package:lagto_mobprog/screens/newsfeed_screen.dart';
import 'package:lagto_mobprog/constant.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PulseBoard',
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: appBackground,
            colorScheme: const ColorScheme.dark(
              primary: appPrimary,
              secondary: appAccent,
              surface: appSurface,
            ),
            dividerColor: appSurfaceLight,
            useMaterial3: true,
          ),
          initialRoute: '/home',
          routes: {
            '/newsfeed': (context) => const NewsfeedScreen(),
            '/home': (context) => const HomeScreen(),
          },
        ); // MaterialApp
      },
    ); // ScreenUtilInit
  }
}

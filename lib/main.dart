import 'package:flutter/material.dart';
import 'package:flutter_responsive/pages/home_page.dart';
import 'package:flutter_responsive/pages/responsive/desktop_view.dart';
import 'package:flutter_responsive/pages/responsive/mobile_view.dart';
import 'package:flutter_responsive/pages/responsive/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Flutter',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const ResponsiveBuilder(
        desktopScreen: DesktopView(),
        mobileScreen: MobileView(),
      ),
      // Approch 1
      // home: const HomePage(),
    );
  }
}

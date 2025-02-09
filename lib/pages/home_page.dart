import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: width > 600 ? Colors.deepPurple : Colors.green,
      appBar: AppBar(
        title: Text("Responsive"),
      ),
      body: Center(
        child: Text(width.toString()),
      ),
    );
  }
}

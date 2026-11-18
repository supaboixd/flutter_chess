import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('About screen'))
    );
  }
}
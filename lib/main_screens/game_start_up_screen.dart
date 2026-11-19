import 'package:flutter/material.dart';

class GameStartUpScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<GameStartUpScreen> createState() => _GameStartUpScreenState();
}

class _GameStartUpScreenState extends State<GameStartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Setup Game', style: TextStyle(color: Colors.white),),
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },

        ),
      ),
      body: Column(
        children: [
          
        ],
      ),

    );
  }
}
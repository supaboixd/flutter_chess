import 'package:flutter/material.dart';
import 'package:flutter_chess/helper/helper_methods.dart';

class GameTimeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<GameTimeScreen> createState() => _GameTimeScreenState();
}

class _GameTimeScreenState extends State<GameTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Choose Game Time', style: TextStyle(color: Colors.white),) ,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white,),),
          ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,
        childAspectRatio: 1.5,),
        itemCount: gameTimes.length,
        itemBuilder: (context, index){
          //get the first word of the gametime
          final String label = gameTimes[index].split(' ')[0];

          //Get the second word from the gametime

          final String gameTime = gameTimes[index].split(' ')[1];

          return buildGameType(label: label,
           gameTime: gameTime,
            onTap: ( ) {

            },
            );

        }),
    );
  }
}
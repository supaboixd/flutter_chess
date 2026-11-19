import 'package:flutter/material.dart';

Widget buildGameType({required String label, String? gameTime, IconData? icon,required Function()onTap}){
  return InkWell(
    onTap: onTap,
    child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   icon != null ? Icon(icon) : gameTime ! =='60+0' ? const SizedBox.shrink(): Text(gameTime!),
                    const SizedBox(height: 10,),
                    Text(label, style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
  );
}




final List<String> gameTimes = [
  'bullet 1+0',
    'bullet 2+1',
      'bullet 3+0',
        'blitz 3+2',
          'blitz 5+0',
            'blitz 5+3',
              'rapid 10+0',
              'rapid 10+5',
              'rapid 15+10',
              'Classical 30+0',
              'Classical 30+20',
              'Custom 60+0',


];


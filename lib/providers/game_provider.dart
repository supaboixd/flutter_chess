import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:flutter_chess/constants.dart';
import 'package:squares/squares.dart';

class GameProvider extends ChangeNotifier{
  bool _vsComputer = false;
  bool _isLoading = false;

  int _player = Squares.white;
  PlayerColor _playerColor = PlayerColor.white;

  Duration _whitesTime = Duration.zero;
  Duration _blacksTime = Duration.zero;

  // Saved time
   Duration _savedWhitesTime = Duration.zero;
   Duration _savedBlacksTime = Duration.zero;

   int get player => _player;
   PlayerColor get playerColor => _playerColor;

   Duration get whitesTime => _whitesTime;
   Duration get blacksTime => _blacksTime;

   Duration get savedWhitesTime => _savedWhitesTime;
   Duration get savedBlacksTime => _savedBlacksTime;


//get method
  bool get vsComputer => _vsComputer;
  bool get isLoading => _isLoading;

  //set vs computer
    void   setVsComputer ({required bool value}){
    _vsComputer = value;
    notifyListeners();
  }

  void setIsLoading({required bool value}){
    _isLoading = value;
    notifyListeners();
  }

  //set gametime
  Future<void>setGameTime({required String newSavedWhitesTime, required String newSavedBlacksTime,}) async{
    //save the times
    _savedWhitesTime = Duration(minutes: int.parse(newSavedWhitesTime));
    _savedBlacksTime = Duration(minutes: int.parse(newSavedBlacksTime));
    notifyListeners();
    //set times
    setWhitesTime(_savedWhitesTime);
    setBlacksTime(_savedBlacksTime);
  }

  void setWhitesTime(Duration time){
    _whitesTime = time;
    notifyListeners();
  }

  void setBlacksTime(Duration time){
    _blacksTime = time;
    notifyListeners();
  }
}
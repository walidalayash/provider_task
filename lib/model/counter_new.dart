
import 'package:flutter/material.dart';

class CounterNew extends ChangeNotifier{

int counter = 0;


inc(){
  counter++;
  notifyListeners();
}
}
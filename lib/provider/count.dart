import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier{


  int _count=0;
  int get count=>_count;

  void SetCount()
  {
    _count++;
    notifyListeners();
  }
}

class Listviewprovider extends ChangeNotifier {
  Set<int> _selectitem = {}; 
  Set<int> get selectitem => _selectitem;

  void setlisttt(int value) {
    if (_selectitem.contains(value)) {
      _selectitem.remove(value);
    } else {
      _selectitem.add(value);
    }
    notifyListeners(); 
  }
}

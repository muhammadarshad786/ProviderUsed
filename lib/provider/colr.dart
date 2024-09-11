import 'package:flutter/material.dart';

class COlORCHANGE extends ChangeNotifier
{
  double _valu=1.0;

  double get valuedou=>_valu;

  void setvalueee(double lue)
  {
    _valu=lue;

  notifyListeners();
  }
}
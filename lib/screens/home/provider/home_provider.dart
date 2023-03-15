import 'package:flutter/material.dart';

class home_provider extends ChangeNotifier
{
  bool select = true;
  bool select1 = true;
  bool select2 = true;

  void update(bool val)
  {
    select = val;
    notifyListeners();
  }

  void change(bool value)
  {
    select1 = value;
    notifyListeners();
  }

  void ch(bool value)
  {
    select2 = value;
    notifyListeners();
  }
}
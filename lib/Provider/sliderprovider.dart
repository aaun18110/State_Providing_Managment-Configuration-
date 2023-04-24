import 'package:flutter/foundation.dart';

class MultiplesProvider with ChangeNotifier {
  double value = 1.0;
  double get values => value;

  void setvalue(double val) {
    value = val;
    notifyListeners();
  }
}

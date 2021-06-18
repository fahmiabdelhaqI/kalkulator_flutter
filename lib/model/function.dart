import 'package:flutter/foundation.dart';
import 'package:math_expressions/math_expressions.dart';

class Functions with ChangeNotifier {
  String _hasil;
  String _input;
  List<int> _hasilBilanganPrima = List<int>();

  String get input => _input;
  String get hasil => _hasil;
  List<int> get hasilPrima => _hasilBilanganPrima;

  set hasilPrima(value) {
    _hasilBilanganPrima = value;
    notifyListeners();
  }

  bool checkingBilanganPrima(hasil) {
    int r = 0;
    if (num.parse(hasil) >= 1) {
      for (int i = 1; i <= num.parse(hasil); i++) {
        if (num.parse(hasil) % i == 0) {
          r++;
        }
        // int i2 = num.parse(hasil) % i;
        // if (i2 == 0) {
        //   r++;
        // }
      }
      if (r <= 2) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  set hasil(value) {
    List<int> _hasilBilanganPrimas = _hasilBilanganPrima;
    // replace String agar bisa di lakukan perhitungan
    value = value.replaceAll(' ', '');
    value = value.replaceAll('x', '*');
    value = value.replaceAll(':', '/');

    //Parse String ke matematika
    Parser p = new Parser();
    Expression exp = p.parse("$value");
    // ContextModel cm = ContextModel();
    String result = exp.evaluate(EvaluationType.REAL, null).toString();

    // jika value terakhir .0 maka (.0) akan di hapus
    String checkLastString = result.substring(result.length - 2);
    if (checkLastString == '.0') {
      result = result.replaceAll('.0', '');
    } else {
      result = result;
    }
    // bool isPrimes = checkingBilanganPrima(result);
    // if (isPrimes) {
    //   _hasilBilanganPrimas.add(hasil.toLowerCase()=='true');
    //   hasilPrima = _hasilBilanganPrimas;
    // }

    _hasil = result;
    notifyListeners();
  }

  set input(String value) {
    _input = value;
    notifyListeners();
  }
}

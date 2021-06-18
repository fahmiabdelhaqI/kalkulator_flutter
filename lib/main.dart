import 'package:flutter/material.dart';
import 'package:kalkulator_app/model/function.dart';
import 'package:kalkulator_app/provider/kalkulator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Functions>(create: (_) => Functions())
      ],
      child: MaterialApp(
        home: Kalkulator(),
      ),
    );
  }
}

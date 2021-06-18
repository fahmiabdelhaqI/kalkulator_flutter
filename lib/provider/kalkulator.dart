import 'package:flutter/material.dart';
import 'package:kalkulator_app/model/function.dart';
import 'package:provider/provider.dart';

class Kalkulator extends StatelessWidget {
  // const Kalkulator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.centerRight,
                    child: Consumer<Functions>(
                      builder: (context, functions, _) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${functions.hasil ?? ''}",
                            style: TextStyle(color: Colors.amber, fontSize: 35),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${functions.input ?? ''}",
                            style: TextStyle(color: Colors.blue, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Consumer<Functions>(
              builder: (context, functions, _) => Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),
                          GestureDetector(
                            onTap: () {
                              functions.input = null;
                            },
                            child: Text(
                              "AC",
                              style: TextStyle(
                                  color: Colors.amber[300], fontSize: 30),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (functions.input.length > 0) {
                                functions.input = functions.input
                                    .substring(0, functions.input.length - 1);
                              }
                            },
                            child: Icon(
                              Icons.backspace,
                              color: Color(0xff555555),
                              size: 30,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null &&
                                  functions.input != '' &&
                                  functions.input.substring(
                                          functions.input.length - 1) !=
                                      ':') {
                                functions.input += ':';
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe9e9e9)),
                              child: Text(
                                ":",
                                style: TextStyle(
                                    color: Color(0xff555555),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '7';
                              } else {
                                functions.input += '7';
                              }
                            },
                            child: Text(
                              "7",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '8';
                              } else {
                                functions.input += '8';
                              }
                            },
                            child: Text(
                              "8",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '9';
                              } else {
                                functions.input += '9';
                              }
                            },
                            child: Text(
                              "9",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null &&
                                  functions.input != '' &&
                                  functions.input.substring(
                                          functions.input.length - 1) !=
                                      'x') {
                                functions.input += 'x';
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe9e9e9)),
                              child: Text(
                                "x",
                                style: TextStyle(
                                    color: Color(0xff555555), fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '4';
                              } else {
                                functions.input += '4';
                              }
                            },
                            child: Text(
                              "4",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '5';
                              } else {
                                functions.input += '5';
                              }
                            },
                            child: Text(
                              "5",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '6';
                              } else {
                                functions.input += '6';
                              }
                            },
                            child: Text(
                              "6",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null &&
                                  functions.input != '' &&
                                  functions.input.substring(
                                          functions.input.length - 1) !=
                                      '+') {
                                functions.input += '+';
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe9e9e9)),
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Color(0xff555555), fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '1';
                              }
                              functions.input += '1';
                            },
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '2';
                              } else {
                                functions.input += '2';
                              }
                            },
                            child: Text(
                              "2",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input == null) {
                                functions.input = '3';
                              } else {
                                functions.input += '3';
                              }
                            },
                            child: Text(
                              "3",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null &&
                                  functions.input != '' &&
                                  functions.input.substring(
                                          functions.input.length - 1) !=
                                      '-') {
                                functions.input += '-';
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe9e9e9)),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Color(0xff555555), fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null) {
                                functions.input += '0';
                              }
                              functions.input = '0';
                            },
                            child: Text(
                              "0",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null) {
                                functions.input += '00';
                              } else {
                                functions.input = '00';
                              }
                            },
                            child: Text(
                              "00",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null) {
                                functions.input += '.';
                              }
                            },
                            child: Text(
                              ".",
                              style: TextStyle(
                                  color: Color(0xff555555), fontSize: 30),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (functions.input != null) {
                                functions.hasil = functions.input;
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe9e9e9)),
                              child: Text(
                                "=",
                                style: TextStyle(
                                    color: Color(0xff555555), fontSize: 30),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

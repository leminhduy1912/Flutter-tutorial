//import thu vien
import 'package:flutter/material.dart';

//Main
void main() {
  // Khoi chay app
  runApp(MaterialApp(
    // xay dung giao dien dau tien
    home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title:const Text("Hello nha"),
          ),
      body: const Center(
          child: Text("hello word")),
    )),
    debugShowCheckedModeBanner: false,
  ));
}

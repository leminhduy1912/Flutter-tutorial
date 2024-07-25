//import thu vien
import 'package:flutter/material.dart';

//Main
void main() {
  // Khoi chay app
  runApp(MaterialApp(
    // xay dung giao dien dau tien
    home: SafeArea(
        child: Scaffold(
          body: Center(
              child: MyWidget(true)),
      //     appBar: AppBar(
      //       backgroundColor: Colors.red,
      //       title:const Text("Hello nha"),
      //     ),
      // body: const Center(
      //     child: Text("hello word")),
    )),
    debugShowCheckedModeBanner: false,
  ));
}
class MyWidget extends StatelessWidget{
  final bool loading;

  MyWidget(this.loading);

  @override
  Widget build(BuildContext context) {
   if (loading){
     return const CircularProgressIndicator();
   } else {
     return const Text("State");
   }
  }

}

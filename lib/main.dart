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
              child: MyWidget2(true)),
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
// class MyWidget extends StatelessWidget{
//   final bool loading;
//
//   MyWidget(this.loading);
//
//   @override
//   Widget build(BuildContext context) {
//    if (loading){
//      return const CircularProgressIndicator();
//    } else {
//      return const Text("State");
//    }
//   }

// state
class MyWidget2 extends StatefulWidget{
  final bool loading;

  MyWidget2(this.loading);

  @override
  State<StatefulWidget> createState() {
  return MyWidget2State();
  }

}

class MyWidget2State extends State<MyWidget2>{
  @override
  Widget build(BuildContext context) {
   return widget.loading ? CircularProgressIndicator() : Text("Stateful");
  }
  
}

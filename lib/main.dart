//import thu vien
import 'package:flutter/material.dart';

//Main
void main() {
  // Khoi chay app
  runApp( MaterialApp(
    theme: ThemeData(
      fontFamily: 'test'
    ),
    // xay dung giao dien dau tien
    home: const SafeArea(
        child: Scaffold(
      body: Center(child: Text('etest',
        textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.pink,
        fontFamily: 'test',
        fontSize: 30
        // fontStyle: FontStyle.italic
      ),)),
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
// class MyWidget2 extends StatefulWidget {
//   final bool loading;
//
//   MyWidget2(this.loading);
//
//   @override
//   State<StatefulWidget> createState() {
//     return MyWidget2State();
//   }
// }
//
// class MyWidget2State extends State<MyWidget2> {
//   late bool _localLoading;
//   @override
//   void initState() {
//     _localLoading = widget.loading;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _localLoading
//         ? const CircularProgressIndicator()
//         : FloatingActionButton(
//             onPressed: onClickButton,
//           );
//   }
//
//   void onClickButton() {
//     setState(() {
//       _localLoading = true;
//     });
//   }
//}

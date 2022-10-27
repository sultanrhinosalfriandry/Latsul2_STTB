import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  showToast(){
    setState(() {
      Fluttertoast.showToast(
        msg:'this is notification from toast',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Notip Wijet"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(onPressed: (){showToast();}, child: Text("Show Toast"),)
            ],
          ) ),
         ),
    );
  }
}
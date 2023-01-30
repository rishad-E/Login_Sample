import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:rishad_project/pages.dart/spalsh_screen.dart';



const SAVE_KEY_NAME = 'userLogedIn';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
       
      ),
      home: ScreenSplash(),
    );
  }
}
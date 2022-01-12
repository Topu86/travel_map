import 'package:firebase_core/firebase_core.dart'as firebase_core;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel_map/pages/crud.dart';
import 'package:travel_map/pages/spot_details.dart';

import 'pages/homepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:managment/Screens/home.dart';
import 'package:managment/Screens/statistics.dart';
import 'package:managment/widgets/bottomnavigationbar.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_Screen(),//Bottom
    );
  }
}

class splash_Screen extends StatelessWidget {
  const splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Tchowacoin"),
          SizedBox(height: 10,),
          Text("A melhor carteira digital no mercado angola e mais alem!", style: TextStyle(fontSize: 30),),
          SizedBox(height: 25,),
          ElevatedButton(onPressed:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottom()));
          },
           child: Text("Começar agora")),
        ],
      )
    );
  }
}
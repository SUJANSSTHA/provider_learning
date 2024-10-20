import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/List_Page.dart';
import 'package:provider_learning/List_map_provider.dart';
import 'package:provider_learning/counter_provider.dart';

void main() {
  runApp( MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=>ListMapProvider()),
        ChangeNotifierProvider(create: (context)=>CounterProvider()),
      ],
      child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      // home: ChangeNotifierProvider(
      //   create: (_)=>ListMapProvider(),
      //   // child: HomePage(),
      //   child: ListPage(),
      //   ),
      home:ListPage(),
      
    );
  }
}

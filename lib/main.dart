import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/counter.dart';
import 'package:provider_learning/counter_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: ChangeNotifierProvider(
        create: (_)=>CounterProvider(),
        child: HomePage(),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/List_map_provider.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({super.key});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Center(
        child: IconButton(onPressed: (){
           // context.read<ListMapProvide>().addData()
          context.read<ListMapProvider>().addData({
            "name": "Contact Name",
            "mobile": "981419464",
          });
        }, icon: Icon(Icons.add)),
      ),
    );
  }
}
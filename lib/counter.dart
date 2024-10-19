import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/counter_provider.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

class HomePage extends StatelessWidget {

  HomePage({super.key}); // private variable
  @override
  Widget build(BuildContext context) {
    print("Build function called");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text("Provider",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
        ),)),
      ),
        body: Center(
          child:Consumer<CounterProvider>(
            builder: (ctx, _, __){

          return Text('${Provider.of<CounterProvider>(ctx, listen: true).getCount()}',style: TextStyle(
            fontSize: 25.0,
          ));
          })
          
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            //! <inside this two greater and less sign denote the type of or which type of provider is provide>
            Provider.of<CounterProvider>(context,listen: false).incrementCount();
          },child: Icon(Icons.add),
           ),
      );
  }
}
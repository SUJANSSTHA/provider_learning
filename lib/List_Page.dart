import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/List_map_provider.dart';
import 'package:provider_learning/add_Data.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Consumer<ListMapProvider>(
        builder: (ctx, provider, __) {
          // return ctx.watch<ListMapProvider>()
          var alldata = provider.getData(); 
          return alldata.isNotEmpty
              ? ListView.builder(
                itemCount: alldata.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text("${alldata[index]['name']}"),
                    subtitle: Text("${alldata[index]['mobile']}"),
                    trailing: SizedBox(width: 120.0,
                    child: Row(
                      children: [
                        IconButton(onPressed: 
                      (){
                        context.read<ListMapProvider>().updateData(({
                          "name": "UPdated Contact",
                          "mobile": "44949641478",
                        }), index);
                      }, icon: Icon(Icons.edit)),
                        IconButton(onPressed: 
                      (){
                        context.read<ListMapProvider>().deleteData(index);
                      }, icon: Icon(Icons.delete,color: Colors.red,)),
                      ],
                    ),
                    ),
                    
                  );
                })
              : Center(
                  child: Text("No Contacts yet!"),
                  
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: 
         (context)=>AddDataPage(),
         ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

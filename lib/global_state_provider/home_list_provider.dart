import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_provider.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/stateful_app_addition.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'addData.dart';

void main ()
{
  runApp(ChangeNotifierProvider(
    create: (context)=>ListProvider.getInstance(),
    child: homeList(),));
}
class homeList extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Home Note List",
      home: homeNoteList(),
    );
  }
}
class homeNoteList extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Note Lists"),
      ),
      body: Consumer<ListProvider>(builder: (ctx,provider,child)
      {
        //var allData = provider.getData();
        var allData = ctx.watch<ListProvider>().getData();
        return allData.isNotEmpty ? ListView.builder(
          itemCount: allData.length,
            itemBuilder: (context,index)
            {
              return ListTile(
                leading: Text("${index + 1}"),
                //context.watch<ListProvider>().getData();
                //Provider.of<ListProvider>(context).getData();
                title: Text("${provider.getData()[index]['title']}"),
                subtitle: Text("${provider.getData()[index]['price']}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>updateData(index: index)));
                        },
                        child: Icon(Icons.edit)),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: ()
                        {
                          context.read<ListProvider>().deleteData(index: index);
                        },
                        child: Icon(Icons.delete,color: Colors.red,)),
                  ],
                ),

              );
        })
            : Center(
          child: Text("No items yet"),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>addData()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerused/provider/count.dart';

class Pageoo extends StatelessWidget {
  const Pageoo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column
      (
        children: [
        
Consumer<Listviewprovider>(builder: ((context, value, child) {
  return Expanded(
  child: ListView.builder(
   itemCount:value. selectitem.length,
    itemBuilder: ((context, index) {
      return ListTile(
        onTap: (){
        value.setlisttt(index);
        },
       title: Text('Item'+index.toString()),
       trailing: Icon(
      value.selectitem.contains(index) ? Icons.heat_pump_rounded : Icons.heart_broken_outlined
       ),
  
      );
  
      
      
    }),
   
    
  ),
);

  
}))
      ]),

      
    );
  }
}
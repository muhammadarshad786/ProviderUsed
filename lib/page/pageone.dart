import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerused/page/page2.dart';
import 'package:providerused/provider/colr.dart';
import 'package:providerused/provider/count.dart';

class Home extends StatelessWidget {
   Home({super.key});

  double valudouable=1.0;

  @override
  Widget build(BuildContext context) {
    print('build');
    final countprovider=Provider.of<CountProvider>(context,listen: false);
   // final sliderpro=Provider.of<COlORCHANGE>(context,listen: false);
     //final Listshow=Provider.of<Listviewprovider>(context ,listen: false);
    return Scaffold(

      appBar: AppBar(
        title:const Text('Favourite App'),
        actions: [
          InkWell(
            onTap: (){
       
             Navigator.push(context, MaterialPageRoute(builder: ( ( BuildContext context) =>const Pageoo() )));
            },

            child:const  Icon(Icons.heat_pump_sharp),
          )
        ],
      ),

      body: Column(
        
        children: [
           
          Consumer<CountProvider>(builder: (context, value, child) {
          return Text(value.count.toString());
        },),
Consumer<COlORCHANGE>(builder: (context,value,child){
  return Slider(
    max: 1,
    min: 0,
    value: value.valuedou,
    onChanged: (val){
valudouable=val;
value.setvalueee(valudouable);


    },
  );

}),


Consumer<Listviewprovider>(builder: ((context, value, child) {
  return Expanded(
  child: ListView.builder(
   itemCount: 200,
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

        
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.SetCount();
      },
      child: const Text("+"),
      ),
    );
  }
}
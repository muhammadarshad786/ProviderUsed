import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerused/page/pageone.dart';
import 'package:providerused/provider/colr.dart';
import 'package:providerused/provider/count.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

      ChangeNotifierProvider(create: (_)=>CountProvider()),
      ChangeNotifierProvider(create: (_)=>COlORCHANGE()),
      ChangeNotifierProvider(create: (_)=>Listviewprovider())
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Home(),
    ),
    
    
    );
    
    
  
 
  }
}

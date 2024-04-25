import 'package:flutter/material.dart';
import 'package:myapp/src/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:TAppTheme.lighttheme,
      darkTheme: TAppTheme.darttheme,
      themeMode: ThemeMode.system,
      home:AppHome()
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App Flutter"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: Icon(Icons.connecting_airports_sharp),),
    );
  }
}




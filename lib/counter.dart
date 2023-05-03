import 'package:flutter/material.dart';

/// main.dart
/// first study of stateful widget
/// @since 4-27-2023
/// @author Dounguk Kim


void main(){
  runApp(App());
}

class App extends StatefulWidget{
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App>{
  int counter=0;
  List<int> numbers=[];

  void onClicked(){
    setState(() {    // tells to refresh to show changed data
      numbers.add(numbers.length);
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("click count",
                    style: TextStyle(fontSize:30),
                  ),
                  for (var n in numbers)
                    Text("$n",
                      style: TextStyle(fontSize: 30),
                    ),

                  // Text('$counter',
                  // style: TextStyle(fontSize: 30),
                  // ),
                  IconButton(
                    iconSize: 40,
                    onPressed: onClicked,
                    icon: const Icon(Icons.add_box_rounded,
                    ),
                  ),
                ],)
          ),
        ),
      ),
    );
  }
}
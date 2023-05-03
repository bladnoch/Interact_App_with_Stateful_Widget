import 'package:flutter/material.dart';

/// main.dart
/// second study of stateful widget
/// @since 4-29-2023
/// @author Dounguk Kim


void main(){
  runApp(App());
}

class App extends StatefulWidget{
  @override
  State<App> createState() => _AppState();
}


class _AppState extends State<App>{

  bool showTitle= true;

  void toggleTitle(){
    setState(() {
      showTitle= !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( //theme 추가 주제는 붉은색
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.green[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showTitle ? MyLargeTitle(): Text("Nothing"),
                IconButton(onPressed: toggleTitle,
                  icon: showTitle ? Icon( Icons.cached_outlined) :
                  Icon( Icons.remove_red_eye),),
            ],)
          ),
        ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {


  @override
  void initState() {
    super.initState();
    print("hello");
  }

  @override
  void dispose(){
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print('inittitle');
    return Text("My large title",
    style: TextStyle(fontSize:30,
        color: Theme.of(context).textTheme.titleLarge?.color,
    ),
    );
  }
}
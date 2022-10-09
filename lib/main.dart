import 'package:flutter/material.dart';
import 'widget.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.deepOrange,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.black,
              actionsIconTheme: IconThemeData(color: Colors.grey),
              actions: [
                IconButton(
                    onPressed: () {
                      print('search');
                    },
                    icon: Icon(Icons.search, size: 30.0,)
                ),
                SizedBox(width: 5.0),
                IconButton(onPressed: () {
                  print('set');
                },
                    icon: Icon(Icons.settings, size: 30.0)),
              ],
            ),
            body: ListView(
              children: [
                ClipOval(

                  child: Image.asset('assets/다운로드.png'),
                ),
                AddButton(),

              ],
            )
        )
    );
  }
}







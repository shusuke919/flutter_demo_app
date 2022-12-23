import 'package:flutter/material.dart';

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
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '本賀テスト'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  変数を定義する
  List<String> titleList = ['amazon','楽天','Yahoo'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // ListView　縦に並ぶ、スクロールができる
      body: ListView(
        children: [
          Text(titleList[0]),
          const ListTile(
            leading: Icon(Icons.key),
            title: Text('amazon'),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('楽天'),
          ),
          Divider(height: 0,),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Yahoo'),
          ),
          Divider(height: 0,),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

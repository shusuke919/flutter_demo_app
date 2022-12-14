import 'package:flutter/material.dart';

import 'next_page.dart';

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
        title:const Text("テスト"),
      ),
      // ListView　縦に並ぶ、スクロールができる
      body:ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.key),
                  title: Text(titleList[index]),
                  onTap: (){
                    print('リストがタップされました');
                    //画面遷移のコード　呪文みたいな感じ
                    Navigator.push(context, MaterialPageRoute(
                         builder: (context) => NextPage(titleList[index])));
                  },
                ),
                const Divider(height: 0,),
              ],
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add('google');
        print(titleList);
        setState(() {

        });
          },

        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

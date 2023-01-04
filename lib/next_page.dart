import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;
  const NextPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //文字の位置を調整、デフォルトでは中央ぞろえになっている
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Row(
              children: const [
                SizedBox(width: 30, child: Text('ID')),
                Text('：毎回同じIDを表示'),
              ],
            ),
            //余白を入れる
            const SizedBox(height: 30,),
            Row(
              children: const [
                SizedBox(width: 30, child: Text('PW')),
                Text('：毎回同じPWを表示'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

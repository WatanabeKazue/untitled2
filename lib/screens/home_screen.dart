

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _text01 = "おめでとうございます";
  String _text02 = "合格です";
  String _text03 = "よくできました";
  String _text04 = "残念でした";
  String _text05 = "不合格です";
  String _text06 = "頑張りましょう";

  List<String> _texts = ["おめでとうございます","合格です","よくできました","残念でした","不合格です","頑張りましょう"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(flex: 1, child: _soundButton(_texts[0])), //TODO ボタン
                  Expanded(flex: 1, child: _soundButton(_texts[1])),  //TODO ボタン
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(flex: 1, child: _soundButton(_texts[2])),  //TODO ボタン
                  Expanded(flex: 1, child: _soundButton(_texts[3])),  //TODO ボタン
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(flex: 1, child: _soundButton(_texts[4])),  //TODO ボタン
                  Expanded(flex: 1, child: _soundButton(_texts[5])), //TODO ボタン
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  widget _soundButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: null,
        child: (""),
      ),
    );
  }
}
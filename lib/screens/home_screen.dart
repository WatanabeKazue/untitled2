
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _textHeader = "あなたの名前を教えてください。";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  //String _text01 = "おめでとうございます";
  //String _text02 = "合格です";
  //String _text03 = "よくできました";
  //String _text04 = "残念でした";
  //String _text05 = "不合格です";
  //String _text06 = "頑張りましょう";

  List<int> _soundIds = [0,0,0,0,0,0];
  //late Soundpool _soundpool;
  int number = 3;

  List<String> _texts = ["おめでとうございます","合格です","よくできました","残念でした","不合格です","頑張りましょう"];

  @override
  void initState() {
    super.initState();
    _initSounds();
  print("initState終わったで～=buildメソッド回ったで～");
  }
 // }

  //Future<void>


 // _soundIds[0] = await loadSound("assets/sounds/sound1.mp3");
  //_soundIds[1] = await loadSound("assets/sounds/sound1.mp3");
 // _soundIds[2] = await loadSound("assets/sounds/sound1.mp3");
//  _soundIds[3] = await loadSound("assets/sounds/sound1.mp3");
 // _soundIds[4] = await loadSound("assets/sounds/sound1.mp3");
 // _soundIds[5] = await loadSound("assets/sounds/sound1.mp3");

  print("initState終わったで～=効果音ロードできたで～");
  @override
  void setState() {
    super.setState();
  }

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


  //TODO 戻り値の型を大文字から+引数の設定要
  Widget _soundButton(String displayText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: null,
          child: Text(displayText),
      ),
    );
  }
}//TODO 98
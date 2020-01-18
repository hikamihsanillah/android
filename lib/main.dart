import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}
class MyAppState extends State{

  var pertanyaanIndex = 0;
  void klikjawaban() {
    print("Klik Jawaban A Soal ke");
    print(pertanyaanIndex);
    setState(() {
    pertanyaanIndex++; 
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var pertanyaan = [
      'Apa yang dimaksud mamalia ?',
      'Hewan yang Tidak Memiliki Daun Telinga Disesbut ?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Aplikasi QUIZ"),
          ),
          body: Column(
            children: <Widget>[
              Text(pertanyaan[pertanyaanIndex]),
              RaisedButton(
                onPressed: klikjawaban,
                child: Text("Jawaban A"),
              ),
              RaisedButton(
                onPressed: () {
                  print('klik Jawaban B');
                },
                child: Text("Jawaban B"),
              ),
              RaisedButton(
                onPressed: () => print('klik Jawaban C'),
                child: Text("Jawaban C"),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/main_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('業務管理アプリ'),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.cc_text,
                    style: TextStyle(
                      fontSize:  30,
                    ),
                  ),
                  RaisedButton(
                    child: Text("button"),
                    onPressed: (){
                      // モデルからメソッドを実行
                      model.change_cc_text();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
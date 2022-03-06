import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningflutterapi/regNums.dart';
import 'package:learningflutterapi/results.dart';

void main() {
  runApp(new MaterialApp(
    home: DisplaySelectedData(),
  ));
}

class RegNumbers extends StatefulWidget {
  const RegNumbers({Key? key}) : super(key: key);

  @override
  _RegNumbersState createState() => _RegNumbersState();
}

class _RegNumbersState extends State<RegNumbers> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Api Alone"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: num1,
                        decoration: InputDecoration(
                          hintText: "Num 1"
                        ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: num2,
                      decoration: InputDecoration(
                          hintText: "Num 2"
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Column(
                children: [
                 TextButton.icon(onPressed: (){
                   registerData(num1.text,num2.text);
                 }, icon: Icon(Icons.save), label: Text("Save Data"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

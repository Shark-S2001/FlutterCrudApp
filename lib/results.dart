import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningflutterapi/selectData.dart';
import 'package:learningflutterapi/dataSelected.dart';

class DisplaySelectedData extends StatefulWidget {
  const DisplaySelectedData({Key? key}) : super(key: key);

  @override
  _DisplaySelectedDataState createState() => _DisplaySelectedDataState();
}

class _DisplaySelectedDataState extends State<DisplaySelectedData> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Display Selected Data"),
          centerTitle: true,
        ),
        body: Container(
          child: FutureBuilder(
            future: getData(),
            builder: (BuildContext context,AsyncSnapshot snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,int index){
                    SelectData selectData = snapshot.data[index];
                    //Add results of two digits
                    int results = int.parse(selectData.num1) + int.parse( selectData.num2);
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text("Number 1: ${selectData.num1},  Num 2: ${selectData.num2},  Results: ${results}"),
                          ],
                        ),
                      ),
                    );
                  },

                );
              }
              return CircularProgressIndicator();
            },
          ),
        )
    );
  }
}


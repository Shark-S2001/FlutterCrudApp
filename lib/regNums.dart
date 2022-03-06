import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

Future registerData(String number1, String number2) async{
  String url = "http://192.168.0.103/phpapi/regnumbers.php";
  var response = await http.post(Uri.parse(url),body:{
      "number1": number1,
      "number2": number2
  });

  if(response.body == "Error"){
     Fluttertoast.showToast(
        msg: "Error Registering Numbers",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }else{
     Fluttertoast.showToast(
        msg: "Numbers Created Successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
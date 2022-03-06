import 'package:http/http.dart' as http;
import 'dataSelected.dart';

Future<List<SelectData>> getData() async{
  var url ="http://192.168.0.103/phpapi/selectingData.php";
  var response = await http.get(Uri.parse(url));

  return selectDataFromJson(response.body);
}

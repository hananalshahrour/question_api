import 'dart:convert';
import 'package:http/http.dart' as http;

void main()async{
  var data= await getData();
  print(data);
}
Future getData()async{
  final url='https://opentdb.com/api.php?amount=10&difficulty=medium&type=boolean';
  //var uri=Uri.tryParse(url);
  var res=await http.get(Uri.tryParse(url)!);
  if(res.statusCode==200){
    var tmp= json.decode(res.body);
    return tmp;
  }else{
    throw Exception('Error!');
  }

}
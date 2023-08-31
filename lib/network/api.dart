import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:widgets_test_project/model/demo_model.dart';
String url = 'https://jsonplaceholder.typicode.com/posts';

///Method for GET Request
Future<Demo> getDemoResponse() async {
  final response = await http.get(Uri.parse('$url/1'));
  return responseFromJson(response.body);
}

///Method for POST Request
//Future<http.Response> createResponse(Demo demo) async{
//  final response = await http.post('$url',
//      headers: {
//        HttpHeaders.contentTypeHeader: 'application/json',
//        HttpHeaders.authorizationHeader : ''
//      },
//      body: responseToJson(demo)
//  );
//  return response;
//}

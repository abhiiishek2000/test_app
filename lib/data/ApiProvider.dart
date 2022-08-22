import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:new_test_app/const.dart';
import 'dart:io';
import 'dart:async';

import 'package:new_test_app/model/category_response.dart';

import '../model/api_response_model.dart';



class ApiProvider {
Future<ApiResponse> getData() async{
  var url =
  Uri.http(apiUrl,pathExtender);
  var responseBody;
  var response = await http.get(url);
  if(response.statusCode==200){
    responseBody = convert.jsonDecode(response.body) as Map<String, dynamic>;
  }

  return ApiResponse.fromJson(responseBody);
}
}

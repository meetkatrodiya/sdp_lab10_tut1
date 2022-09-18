import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  // const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{

    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);

    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);

    // String username = await Future.delayed(Duration(seconds: 4), (){
    //   return 'UNIVERSITY NAME: DDIT';
    // });
    // Future.delayed(Duration(seconds: 4), () {
    //   // print('Hello Everyone');
    //   print('UNIVERSITY NAME: DDIT');
    // });
    // String bio = await Future.delayed(Duration(seconds: 2), (){
    //   return 'One of the best university in Gujarat';
    // });
    // Future.delayed(Duration(seconds: 2), (){
    //   print('One of the best university in Gujarat');
    // });
    // print('in getData ...after future call...');
    // print('$username -> $bio');
  }

  @override
  void initState(){
    super.initState();
    // print('before getData call');
    // print('INT STATE FUNCTION RUN IN CHOOSE LOCATION...');
    getData();
    // print('after getData call');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}


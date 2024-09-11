import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/clases/article_model.dart';
import 'package:my_flutter_app/services/News_servces.dart';
import 'package:my_flutter_app/views/HomeView.dart';
 

void main() {
  
runApp( const NewsApp());
}

class NewsApp extends StatelessWidget {
   const NewsApp({superkey});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      
    );
  }
}
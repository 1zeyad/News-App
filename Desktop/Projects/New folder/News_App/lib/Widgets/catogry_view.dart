import 'package:flutter/material.dart';
import 'package:my_flutter_app/Widgets/List_views_News_tile_Buldier.dart';


class catogry_View extends StatelessWidget {
  const catogry_View({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: List_News_tile_buldier(catogry: category)
        ),
    );
      
  
  }
}
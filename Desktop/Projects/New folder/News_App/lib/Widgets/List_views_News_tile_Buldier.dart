
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Widgets/List_views%20_News_tile.dart';
import 'package:my_flutter_app/clases/article_model.dart';

import 'package:my_flutter_app/services/News_servces.dart';





class List_News_tile_buldier extends StatefulWidget {
  const List_News_tile_buldier({super.key, required this.catogry});

  final String catogry;
  @override
  State<List_News_tile_buldier> createState() => _List_News_tile_buldierState();
}


class _List_News_tile_buldierState extends State<List_News_tile_buldier> {

  var future;
  @override
  void initState() {
   
    super.initState();
    future= NewsServces().getNews(category: widget.catogry);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<article_model>>(
        future:future,
        builder: (Context, snapshot) {
              if(snapshot.hasData){
                return List_News_tile(aRTICLES: snapshot.data !);
              }
              else if(snapshot.hasError){
                return Text('Opps there  was an error');
                      }
                      
              else{
                return CircularProgressIndicator();
              }
  });
  }
}

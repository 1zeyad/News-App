import 'package:dio/dio.dart';

import 'package:my_flutter_app/clases/article_model.dart';

class NewsServces {
final Dio dio =Dio();

NewsServces();

Future<List<article_model>> getNews({required String category }) async{
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=1ffe58ad481e45c4a1cbc022119cfc31');
  
   Map<String,dynamic> JasonData = response.data;

   List<dynamic> Aritcles =JasonData['articles'];

   List<article_model> List_article=[];
   
   for(var article in Aritcles){

     article_model Article_object = article_model(
      title: article['title'],
      image: article['urlToImage'], 
      subtitle: article['description'],
      url: article["url"]);
      

      List_article.add(Article_object);
   }

   

    return List_article;


  
  
 
  }
dynamic  WebView (){





}
  }




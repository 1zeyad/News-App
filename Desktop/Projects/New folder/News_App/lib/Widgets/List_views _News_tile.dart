import 'package:flutter/material.dart';
import 'package:my_flutter_app/Widgets/News_tile.dart';
import 'package:my_flutter_app/clases/article_model.dart';

class List_News_tile extends StatelessWidget {
   final  List<article_model> aRTICLES ;
   List_News_tile({super.key,required this.aRTICLES});
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: aRTICLES.length,
        itemBuilder: (context, index) {
          return Newstile(Article:aRTICLES[index]);
        }
        );
        
  }
}































// final List<catogry_New_tile> Catogry_news = const [
//     catogry_New_tile(
//       image: 'https://st.depositphotos.com/1594308/1714/i/450/depositphotos_17140201-stock-photo-group-of-pupils.jpg',
//       text1:
//           'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//       text2:
//           'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day ',
//     ),
//     catogry_New_tile(
//         image: 'https://www.cairo24.com/Upload/libfiles/132/6/78.jpg',
//         text1:
//             'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//         text2:
//             'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day '),
//     catogry_New_tile(
//         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFjsGjRlwuZimWpsGZdShbxRBw52vW4X2Ng&s',
//         text1:
//             'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//         text2:
//             'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day '),
//     catogry_New_tile(
//         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFjsGjRlwuZimWpsGZdShbxRBw52vW4X2Ng&s',
//         text1:
//             'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//         text2:
//             'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day '),
//     catogry_New_tile(
//         image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFjsGjRlwuZimWpsGZdShbxRBw52vW4X2Ng&s',
//         text1:
//             'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//         text2:
//             'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day '),
//              catogry_New_tile(
//       image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFjsGjRlwuZimWpsGZdShbxRBw52vW4X2Ng&s',
//       text1:
//           'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//       text2:
//           'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day ',
//     ),
//      catogry_New_tile(
//       image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkFHLH6CT1lzifzNU1qxMv94eZhT_456Zl_Q&s',
//       text1:
//           'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//       text2:
//           'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day ',
//     ),
//      catogry_New_tile(
//       image: 'https://st.depositphotos.com/1594308/1714/i/450/depositphotos_17140201-stock-photo-group-of-pupils.jpg',
//       text1:
//           'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//       text2:
//           'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day ',
//     ),
//      catogry_New_tile(
//       image: 'https://play-lh.googleusercontent.com/rSNmp9T0PGQd9TOipISlED8M21VQF1a2dDmJHMpWBCFJY51HdxqWfP4Te2GJ4mfFNw',
//       text1:
//           'In the morning people shoud read newsPaper because is very good for healthy brain In the morning people shoud read newsPaper because is very good for healthy brain',
//       text2:
//           'you now the read is important to their life and we shoud read books or others every day you now the read is important to their life and we shoud read books or others every day ',
//     ),
 
  
//   ];
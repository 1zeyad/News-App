import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Widgets/catogry_view.dart';
import 'package:my_flutter_app/clases/card.dart';

class Widget_card extends StatelessWidget {
  const Widget_card({super.key,required this.catogry});
  
final catogry_card catogry;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){


     Navigator.of(context).push(MaterialPageRoute(builder:(context){
      return catogry_View( category: catogry.name) ;
     }));

      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          decoration: BoxDecoration(
            image:  DecorationImage(
              image: NetworkImage(catogry.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 110,
          width: 165,
          child: Center(
              child: Text(
            catogry.name,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }
}

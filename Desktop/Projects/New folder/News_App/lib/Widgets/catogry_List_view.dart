import 'package:flutter/material.dart';
import 'package:my_flutter_app/Widgets/WidgetsCard.dart';
import 'package:my_flutter_app/clases/card.dart';

class catogry_List_view extends StatelessWidget {
  const  catogry_List_view({
    super.key,
  });

  final List<catogry_card> catogries = const [


    
    catogry_card(image: 'https://w0.peakpx.com/wallpaper/513/93/HD-wallpaper-business-life-man-thumbnail.jpg', name: 'business'),
    catogry_card(image: 'https://img.freepik.com/premium-photo/realistic-image-world-health-day-celebration-generated-by-ai_200839-1275.jpg?ga=GA1.1.701855464.1725900667&semt=ais_hybrid', name: 'health'),
    catogry_card(image: 'https://img.freepik.com/free-vector/futuristic-design-science-lab-background_23-2148503338.jpg?ga=GA1.1.701855464.1725900667&semt=ais_hybrid', name: 'science'),
    catogry_card(image: 'https://w0.peakpx.com/wallpaper/513/93/HD-wallpaper-business-life-man-thumbnail.jpg', name: 'sports'),
    catogry_card(image: 'https://img.freepik.com/free-photo/abstract-geometric-computer-wallpaper-white-border-connecting-dots-digital-technology-vector-design_53876-160227.jpg?ga=GA1.1.701855464.1725900667&semt=ais_hybrid', name: 'technology'),
    catogry_card(image: 'https://www.shutterstock.com/shutterstock/photos/2164740251/display_1500/stock-photo-purple-blue-vortex-award-background-traditional-style-sparkle-glowing-effect-jubilee-night-2164740251.jpg', name:'entertainment'),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          // => for loop

          scrollDirection: Axis.horizontal,
          itemCount: catogries.length,
          itemBuilder: (context, index) {
            return Widget_card(catogry: catogries[index]);
          }),
    );
  }
}

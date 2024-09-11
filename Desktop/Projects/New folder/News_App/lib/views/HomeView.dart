import 'package:flutter/material.dart';
import 'package:my_flutter_app/Widgets/List_views_News_tile_Buldier.dart';

import 'package:my_flutter_app/Widgets/catogry_List_view.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4),
              child: Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: SingleChildScrollView(
          child: Column(
            children: [const catogry_List_view(),
               List_News_tile_buldier(catogry: 'general',)

            ],
          ),
        ),
      )
    );
  }
}



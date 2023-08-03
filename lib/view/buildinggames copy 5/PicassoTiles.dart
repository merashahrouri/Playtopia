import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_final_project/widgets/custom_item_page.dart';

class PicassoTiles extends StatefulWidget {
  const PicassoTiles({super.key});

  @override
  State<PicassoTiles> createState() => _PicassoTilesState();
}

class _PicassoTilesState extends State<PicassoTiles> {
  @override
  Widget build(BuildContext context) {
    return CustomItemPage(
      click: () {
        
      },
      name: "Picasso Tiles",
      describtion:
          "PicassoTiles 60 Piece Set 60pcs Magnet Building Tiles Clear Magnetic 3D Building Blocks Construction Playboards - Creativity beyond Imagination, Inspirational, Recreational, Educational, Conventional.",
      path:
          "https://m.media-amazon.com/images/I/91a6fNIWJiL._AC_SL1500_.jpg",
      pr: "34",
    );
  }
}

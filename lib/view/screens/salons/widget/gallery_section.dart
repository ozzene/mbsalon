import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mbs/util/dimensiona.dart';
import 'package:mbs/util/images.dart';

class GallerySection extends StatefulWidget {
  const GallerySection({super.key});

  @override
  State<GallerySection> createState() => _GallerySectionState();
}

class _GallerySectionState extends State<GallerySection> {
  @override
  Widget build(BuildContext context) {
    final List<GridTileModel> gridTiles = [
      GridTileModel(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          imageUrl: 'assets/images/images/brushes.jpeg'),
      GridTileModel(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          imageUrl: 'assets/images/images/brushes.jpeg'),
      GridTileModel(
          crossAxisCellCount: 2,
          mainAxisCellCount: 1,
          imageUrl: 'assets/images/images/brushes.jpeg'),
      GridTileModel(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          imageUrl: 'assets/images/images/brushes.jpeg'),
      GridTileModel(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          imageUrl: 'assets/images/images/brushes.jpeg'),
    ];
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radiusLarge)),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: gridTiles.map((tile) {
          return StaggeredGridTile.count(
            crossAxisCellCount: tile.crossAxisCellCount,
            mainAxisCellCount: tile.mainAxisCellCount,
            child: Image.asset(
              tile.imageUrl,
              fit: BoxFit.cover,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class GridTileModel {
  final int crossAxisCellCount;
  final int mainAxisCellCount;
  final String imageUrl;

  GridTileModel({
    required this.crossAxisCellCount,
    required this.mainAxisCellCount,
    required this.imageUrl,
  });
}

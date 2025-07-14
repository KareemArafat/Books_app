import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookImagesLoadingList extends StatelessWidget {
  const BookImagesLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      ignorePointers: false,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: dummyBookImageItem(),
          );
        },
      ),
    );
  }
}

Widget dummyBookImageItem() {
  return Skeleton.leaf(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: AspectRatio(
        aspectRatio: 3 / 5,
        child: Container(color: Colors.white),
      ),
    ),
  );
}

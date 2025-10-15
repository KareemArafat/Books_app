import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_images_loading_list.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewestBooksLoadingList extends StatelessWidget {
  const NewestBooksLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Skeletonizer(
          effect: const ShimmerEffect(
            baseColor: kLoading,
            highlightColor: Colors.grey,
          ),
          ignorePointers: false,
          child: dummyBookItem(),
        );
      }, childCount: 5),
    );
  }
}

Widget dummyBookItem() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    child: SizedBox(
      height: 125,
      child: Row(
        children: [
          dummyBookImage(),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('#################'),
                SizedBox(height: 3),
                Text('#######'),
                SizedBox(height: 3),
                Row(children: [Text('####'), Spacer(), Text('#####')]),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

import 'package:bookly_app/features/home/presentation/views/widgets/book_images_loading_list.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewestBooksLoadingList extends StatelessWidget {
  const NewestBooksLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Skeletonizer(child: dummyBookItem());
      }, childCount: 6),
    );
  }
}

Widget dummyBookItem() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: SizedBox(
      height: 125,
      child: Row(
        children: [
          dummyBookImageItem(),
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

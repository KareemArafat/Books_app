import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_books_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_images_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                BookImagesList(),
                SizedBox(height: 40),
                Text('Newest Books', style: Styles.textStyle18),
                SizedBox(height: 40),
              ],
            ),
          ),
          NewestBooksList(),
        ],
      ),
    );
  }
}

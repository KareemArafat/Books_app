import 'package:bookly_app/features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_images_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_images_loading_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookImagesList extends StatelessWidget {
  const BookImagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: BlocBuilder<AllBooksCubit, AllBooksState>(
        builder: (context, state) {
          if (state is AllBooksCubitSuccess) {
            return ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: BookImagesItem(bookModel: state.books[index]),
                );
              },
            );
          } else if (state is AllBooksCubitFailure) {
            return Center(child: Text(state.errMess));
          } else {
            return BookImagesLoadingList();
          }
        },
      ),
    );
  }
}

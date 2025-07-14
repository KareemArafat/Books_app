import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/buy_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_images_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .2,
          ),
          child: BookImagesItem(bookModel: bookModel),
        ),
        SizedBox(height: 40),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Text(
          bookModel.volumeInfo!.authors?[0] ?? 'Un Known',
          style: Styles.textStyle20,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        BookRating(
          rating: bookModel.volumeInfo!.averageRating ?? 00,
          count: bookModel.volumeInfo!.ratingsCount ?? 00,
        ),
        SizedBox(height: 20),
        BuyButton(bookModel: bookModel),
      ],
    );
  }
}

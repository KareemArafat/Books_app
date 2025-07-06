import 'package:bookly_app/core/utilities/functions.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          backGroundColor: Colors.white,
          text: 'Free',
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        CustomButton(
          tap: () => openUrl(bookUrl: bookModel.volumeInfo!.previewLink!),
          backGroundColor: Colors.orangeAccent,
          text: 'Free preview',
          size: 14,
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ],
    );
  }
}

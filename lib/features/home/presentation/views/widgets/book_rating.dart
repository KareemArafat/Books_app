import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rate_rounded, color: Colors.yellow),
        SizedBox(width: 5),
        Text('$rating', style: Styles.textStyle16),
        SizedBox(width: 5),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}

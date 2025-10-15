import 'package:bookly_app/const.dart';
import 'package:flutter/material.dart';

class CustomGradientScaffold extends StatelessWidget {
  const CustomGradientScaffold({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [kPrimaryColor, kSecColor]),
      ),
      child: Scaffold(backgroundColor: Colors.transparent, body: body),
    );
  }
}

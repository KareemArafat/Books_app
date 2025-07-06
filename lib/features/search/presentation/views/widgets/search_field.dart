import 'package:bookly_app/features/search/manger/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    String? name;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 30),
      child: TextField(
        onChanged: (value) => name = value,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              if (name != null) {
                BlocProvider.of<SearchCubit>(
                  context,
                ).bookSearch(bookName: name!);
              }
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

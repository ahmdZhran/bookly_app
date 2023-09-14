import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custome_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [CustomBookDetailsAppBar(), CustomBookImage()],
          ),
        ),
      ),
    );
  }
}

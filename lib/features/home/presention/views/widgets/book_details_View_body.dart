import 'package:flutter/material.dart';

import 'custome_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}

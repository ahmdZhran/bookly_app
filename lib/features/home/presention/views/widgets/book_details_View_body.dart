import 'package:bookly_app/core/utils/text_style_mode.dart';
import 'package:bookly_app/features/home/presention/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custome_button.dart';
import 'action_button.dart';
import 'custome_book_details_app_bar.dart';
import 'similar_book_list_view.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .2),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 7,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'Rudyadrd Kibling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 50,
              ),
              const ActionButton(),
              const SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like this ',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SimilarBooksListView(),
            ],
          ),
        ),
      ),
    );
  }
}

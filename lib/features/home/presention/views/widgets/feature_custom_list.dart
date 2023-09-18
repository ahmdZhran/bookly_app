import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeatureCustomList extends StatelessWidget {
  const FeatureCustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomBookImage(
                      imagUrl: state
                              .books[index].volumeInfo!.imageLinks?.thumbnail ??
                          ' '),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

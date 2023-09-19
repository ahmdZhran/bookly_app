import 'package:bookly_app/features/home/presention/manager/similar_book/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CustomBookImage(
                    imagUrl:
                        'https://cdn1.iconfinder.com/data/icons/fs-icons-ubuntu-by-franksouza-/512/google-chrome.png',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBookFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

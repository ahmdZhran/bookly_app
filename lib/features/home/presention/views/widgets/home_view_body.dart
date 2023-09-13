import 'package:bookly_app/core/utils/text_style_mode.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'best_siller_books_item.dart';
import 'best_siller_list_view.dart';
import 'feature_custom_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureCustomList(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Best seller',
              style: Styles.textStyle18,
            ),
          ),
          BestSillerBookList()
        ],
      ),
    );
  }
}

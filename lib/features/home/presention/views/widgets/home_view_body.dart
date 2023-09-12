// ignore_for_file: prefer_const_constructors

import 'package:bookly_app/core/utils/text_style_mode.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'feature_custom_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Column(
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
          BestSillerBooksList(),
        ],
      ),
    );
  }
}

class BestSillerBooksList extends StatelessWidget {
  const BestSillerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 140,
        child: AspectRatio(
          aspectRatio: 0.9 / 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsImages.testImage,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

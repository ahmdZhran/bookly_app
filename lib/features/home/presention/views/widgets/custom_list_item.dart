import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .25,
        child: AspectRatio(
          aspectRatio: .8 / 1,
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

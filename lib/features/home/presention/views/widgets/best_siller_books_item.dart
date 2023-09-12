import 'package:flutter/widgets.dart';

import '../../../../../core/utils/assets.dart';

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

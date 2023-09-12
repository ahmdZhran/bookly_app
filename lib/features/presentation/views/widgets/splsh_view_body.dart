import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/widgets.dart';

class SplshViewBody extends StatelessWidget {
  const SplshViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(AssetsImages.logo2)],
    );
  }
}

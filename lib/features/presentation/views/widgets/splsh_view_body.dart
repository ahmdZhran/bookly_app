import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/widgets.dart';

class SplshViewBody extends StatefulWidget {
  const SplshViewBody({super.key});

  @override
  State<SplshViewBody> createState() => _SplshViewBodyState();
}

class _SplshViewBodyState extends State<SplshViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation slidingAnimation;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(minutes: 1),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0,2) , end: Offset.zero).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsImages.logo),
        SlideTransition(
          position: ,
          child: Text('Read free book')),
      ],
    );
  }
}

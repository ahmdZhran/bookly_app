import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:flutter/widgets.dart';

class FeatureCustomList extends StatelessWidget {
  const FeatureCustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}

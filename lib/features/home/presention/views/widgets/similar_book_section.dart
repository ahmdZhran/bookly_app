import 'package:flutter/widgets.dart';

import '../../../../../core/utils/text_style_mode.dart';
import 'similar_book_list_view.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like this ',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}

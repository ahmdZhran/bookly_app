import 'package:bookly_app/core/utils/app_rout.dart';
import 'package:bookly_app/core/utils/text_style_mode.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import 'book_rating_widget.dart';

class BestSillerBooksItem extends StatelessWidget {
  const BestSillerBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 0.9 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        AssetsImages.testImage,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: const Text(
                          'Harry Poter the globlet of fire',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle18,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'J.K Rowling',
                        style: Styles.textStyle14,
                      ),
                      Row(
                        children: [
                          Text(
                            '19.99 E',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          const BookRating()
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:bookly_app/core/utils/assets.dart';
// import 'package:flutter/material.dart';

// import '../../../../../core/utils/text_style_mode.dart';
// import 'book_rating_widget.dart';

// class BestSillerBooksItem extends StatelessWidget {
//   const BestSillerBooksItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           height: 170,
//           width: 140,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(AssetsImages.testImage),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * .5,
//                 child: const Text(
//                   'Harry Poter the globlet of fire',
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   style: Styles.textStyle18,
//                 ),
//               ),
//               const SizedBox(
//                 height: 2,
//               ),
//               const Text(
//                 'J.K Rowling',
//                 style: Styles.textStyle14,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     '19.99 E',
//                     style: Styles.textStyle20
//                         .copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     width: 60,
//                   ),
//                   BookRating(),
//                 ],
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
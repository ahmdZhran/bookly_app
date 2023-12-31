import 'package:bookly_app/core/utils/app_rout.dart';
import 'package:bookly_app/core/utils/text_style_mode.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presention/views/widgets/custom_book_image.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'book_rating_widget.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
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
              CustomBookImage(
                  imagUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? ''),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Text(
                          bookModel.volumeInfo!.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle18,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        bookModel.volumeInfo!.authors![0],
                        style: Styles.textStyle14,
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: Styles.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 50,
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

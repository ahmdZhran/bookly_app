import 'package:flutter/material.dart';

import 'best_siller_books_item.dart';

class BestSillerBookList extends StatelessWidget {
  const BestSillerBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSillerBooksItem(),
          );
        },
      ),
    );
  }
}

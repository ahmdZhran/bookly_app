import 'package:bookly_app/core/utils/text_style_mode.dart';
import 'package:flutter/material.dart';

import '../../../../home/presention/views/widgets/search_result_listView.dart';
import '../../../../home/saerch_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomSearchTextField(),
            SizedBox(
              height: 15,
            ),
            Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SearchResultListView(),
            ),
          ]),
        ),
      ),
    );
  }
}

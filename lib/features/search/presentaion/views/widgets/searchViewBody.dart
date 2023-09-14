import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../home/saerch_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            CustomSearchTextField(),
          ]),
        ),
      ),
    );
  }
}

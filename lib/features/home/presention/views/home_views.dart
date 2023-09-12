import 'package:bookly_app/features/home/presention/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        HomeViewBody(),
      ]),
    );
  }
}

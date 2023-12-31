// ignore_for_file: prefer_const_constructors

import 'package:bookly_app/core/utils/app_rout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Row(
        children: [
          const Text(
            'Library',
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
        ],
      ),
    );
  }
}

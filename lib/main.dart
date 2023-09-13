import 'package:bookly_app/core/utils/app_rout.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(
            ThemeData.dark().textTheme),
      ),
    );
  }
}

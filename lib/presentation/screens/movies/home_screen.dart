import 'package:flutter/material.dart';

import 'package:movie_app_cero/config/constants/enviroments.dart';

class MovieHomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const MovieHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Enviroment.theMovieDbKEy),
      ),
    );
  }
}

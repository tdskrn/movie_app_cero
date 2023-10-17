import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String theMovieDbKEy =
      dotenv.env['THE_MOVIE_DB_KEY'] ?? "Não tem api Key";
}

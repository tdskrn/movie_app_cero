import 'package:dio/dio.dart';
import 'package:movie_app_cero/config/constants/enviroments.dart';
import 'package:movie_app_cero/domain/datasources/movies_datasource.dart';
import 'package:movie_app_cero/domain/entities/movie.dart';
import 'package:movie_app_cero/infrastructure/mappers/movie_mapper.dart';
import 'package:movie_app_cero/infrastructure/models/moviedb/moviedb_response.dart';

class MoviesDbDatasource extends MoviesDatasource {
  final Dio dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Enviroment.theMovieDbKEy,
    'language': 'pt-BR',
  }));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbReponse.fromJson(response.data);
    final List<Movie> movies = movieDBResponse.results
        .where((element) => element.posterPath != 'No Poster')
        .map((movie) => MovieMapper.movieDBToEntity(movie))
        .toList();

    return movies;
  }
}

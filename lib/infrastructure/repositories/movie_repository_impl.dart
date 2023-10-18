import 'package:movie_app_cero/domain/entities/movie.dart';
import 'package:movie_app_cero/domain/repositories/movies_repository.dart';
import 'package:movie_app_cero/infrastructure/datasources/moviedb_datasource.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MoviesDbDatasource moviesDbDatasource;
  MovieRepositoryImpl(this.moviesDbDatasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return moviesDbDatasource.getNowPlaying(page: page);
  }
}

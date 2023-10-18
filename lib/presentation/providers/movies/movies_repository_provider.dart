import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_cero/infrastructure/datasources/moviedb_datasource.dart';
import 'package:movie_app_cero/infrastructure/repositories/movie_repository_impl.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviesDbDatasource());
});

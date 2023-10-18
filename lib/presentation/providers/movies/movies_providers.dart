import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app_cero/domain/entities/movie.dart';
import 'package:movie_app_cero/presentation/providers/movies/movies_repository_provider.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifer, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(movieRepositoryProvider);
  return MoviesNotifer(fetchMoreMovies: fetchMoreMovies.getNowPlaying);
});

typedef MovieCallBack = Future<List<Movie>> Function({int page});

class MoviesNotifer extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  MovieCallBack fetchMoreMovies;
  MoviesNotifer({required this.fetchMoreMovies}) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;

    final List<Movie> movies = await fetchMoreMovies(page: currentPage);
    state = [...state, ...movies];
  }
}

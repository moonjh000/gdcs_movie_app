import 'package:flutter/material.dart';
import 'package:gdsc_movie_app/constants/api_endpoints.dart';
import 'package:gdsc_movie_app/models/tmdb/tmdb_movie_listitem_model.dart';
import 'package:gdsc_movie_app/screens/detail/widget/detail_widget.dart';

class MovieDetailScreen extends StatelessWidget {
  final TMDBMovieListItemModel? movie;

  const MovieDetailScreen({
    super.key,
    this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: Text(movie?.originalTitle ?? 'Movie Detail'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blueGrey.shade300,
            child: Image.network(
              '${ApiEndpoints.tmdbImage500}/${movie?.posterPath}',
              width: double.infinity,
            ),
          ),
          DetailContent(
            originalTitle: movie?.originalTitle ?? 'N/A',
            releaseDate: movie?.releaseDate ?? 'N/A',
            voteAverage: movie?.voteAverage ?? 0.0,
            overview: movie?.overview ?? 'N/A',
          )
        ],
      ),
    );
  }
}

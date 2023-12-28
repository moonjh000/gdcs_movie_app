import 'package:flutter/material.dart';
import 'package:gdsc_movie_app/constants/api_endpoints.dart';
import 'package:gdsc_movie_app/models/tmdb/tmdb_movie_listitem_model.dart';

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
      body: Stack(
        children: [
          // Background Image
          Image.network(
            '${ApiEndpoints.tmdbImage500}/${movie?.backdropPath ?? ''}',
            width: double.infinity,
            height: double.infinity,
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '제목: ${movie?.originalTitle ?? 'N/A'}',
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '개봉일: ${movie?.releaseDate ?? 'N/A'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '평점: ${movie?.voteAverage ?? 'N/A'}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

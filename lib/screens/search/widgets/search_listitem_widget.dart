import 'package:flutter/material.dart';
import 'package:gdsc_movie_app/constants/gaps.dart';
import 'package:gdsc_movie_app/constants/sizes.dart';
import 'package:gdsc_movie_app/models/tmdb/tmdb_movie_listitem_model.dart';
import 'package:gdsc_movie_app/screens/detail/movie_detail_screen.dart';

class SearchListItemWidget extends StatelessWidget {
  final TMDBMovieListItemModel? movie;

  const SearchListItemWidget({
    super.key,
    this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(movie: movie),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              movie?.originalTitle ?? 'N/A',
              style: const TextStyle(
                color: Colors.white,
                fontSize: Sizes.size20,
              ),
            ),
            Gaps.h4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '개봉일: ${movie?.releaseDate ?? 'N/A'}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: Sizes.size10,
                  ),
                ),
                Text(
                  '평점: ${movie?.voteAverage?.toStringAsFixed(2) ?? 0.0}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: Sizes.size10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

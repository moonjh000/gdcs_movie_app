import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gdsc_movie_app/constants/api_endpoints.dart';
import 'package:gdsc_movie_app/constants/sizes.dart';
import 'package:gdsc_movie_app/models/tmdb/tmdb_movie_listitem_model.dart';
import 'package:gdsc_movie_app/screens/detail/movie_detail_screen.dart';

class HomeMovieCardWidget extends StatelessWidget {
  final TMDBMovieListItemModel? movie;

  const HomeMovieCardWidget({
    super.key,
    this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(movie: movie),
          ),
        );
      },
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size5),
          color: Colors.blueGrey.shade300,
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.network(
              '${ApiEndpoints.tmdbImage500}/${movie?.posterPath}',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: Sizes.size5,
                  sigmaY: Sizes.size5,
                ),
                child: Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(Sizes.size5),
                  child: Text(
                    movie?.originalTitle ?? 'N/A',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

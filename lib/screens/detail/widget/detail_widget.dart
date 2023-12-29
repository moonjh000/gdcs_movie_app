import 'package:flutter/material.dart';
import 'package:gdsc_movie_app/constants/gaps.dart';
import 'package:gdsc_movie_app/constants/sizes.dart';

class DetailContent extends StatelessWidget {
  final String originalTitle;
  final String releaseDate;
  final double voteAverage;
  final String overview;

  const DetailContent({
    super.key,
    required this.originalTitle,
    required this.releaseDate,
    required this.voteAverage,
    required this.overview,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size10),
              color: Colors.blue.shade900,
            ),
            padding: const EdgeInsets.all(5.0),
            child: Text(
              originalTitle,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Gaps.v8,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size10),
              color: Colors.blue.shade900,
            ),
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '개봉일: $releaseDate',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Gaps.v8,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size10),
              color: Colors.blue.shade900,
            ),
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '평점: ${voteAverage.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Gaps.v16,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.size10),
              color: Colors.blue.shade900,
            ),
            padding: const EdgeInsets.all(5.0),
            child: Text(
              overview,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

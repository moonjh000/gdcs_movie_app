import 'package:flutter/material.dart';

class DefaultImageWidget extends StatelessWidget {
  const DefaultImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.grey, // 대체할 이미지의 배경색
      child: const Center(
        child: Icon(
          Icons.image,
          size: 50,
          color: Colors.white, // 아이콘 색상
        ),
      ),
    );
  }
}

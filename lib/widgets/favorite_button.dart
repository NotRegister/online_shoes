import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FavoriteButton extends StatefulWidget {
  FavoriteButton({required this.buttonSize});
  final double buttonSize;

  @override
  _FavoriteButtonState createState() =>
      _FavoriteButtonState(buttonSize: buttonSize);
}

class _FavoriteButtonState extends State<FavoriteButton> {
  _FavoriteButtonState({required this.buttonSize});
  final double buttonSize;

  bool isFavorite = false;
  var outlineLove = Icon(
    Icons.favorite_border,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : Colors.black.withOpacity(0.6),
          size: buttonSize,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}

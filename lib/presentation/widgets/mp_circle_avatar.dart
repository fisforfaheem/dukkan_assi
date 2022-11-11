import 'package:flutter/material.dart';

Widget avatar(String url, MaterialColor color) {
  return Material(
    borderRadius: BorderRadius.circular(20.0),
    elevation: 3.0,
    child: url.isNotEmpty
        ? Image.network(
            url,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          )
        : const CircleAvatar(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
  );
}

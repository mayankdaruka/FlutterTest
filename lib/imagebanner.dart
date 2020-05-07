import "package:flutter/material.dart";

class ImageBanner extends StatelessWidget {
  final String _imagepath;

  ImageBanner(this._imagepath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      decoration: BoxDecoration(color: Colors.green),
      child: Image.asset(
        _imagepath,
        fit: BoxFit.cover,
      )
    );
  }
}
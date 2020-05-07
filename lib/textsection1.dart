import "package:flutter/material.dart";

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;
  static const padding = 16.0;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(padding, 32.0, padding, 4.0),
          child: Text(_title, style: Theme.of(context).textTheme.title,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(padding, 32.0, padding, 4.0),
          child: Text(_body, style: Theme.of(context).textTheme.subtitle,),
        )
      ],
    );
  }
}
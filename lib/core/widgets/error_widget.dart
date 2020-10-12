import 'package:flutter/material.dart';

class WidgetError extends StatelessWidget {
  final String errorMessage;

  const WidgetError({Key key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 35,
          ),
        ),
        Text(this.errorMessage ?? "Something went wrong!"),
      ],
    ));
  }
}

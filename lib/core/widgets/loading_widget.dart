import 'package:flutter/material.dart';

class WidgetLoading extends StatelessWidget {
  final String loadingMessage;

  const WidgetLoading({Key key, this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),
          if (this.loadingMessage != null) Text(this.loadingMessage)
        ],
      ),
    );
  }
}

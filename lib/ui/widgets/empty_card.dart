import 'package:flutter/material.dart';

class EmptyCard extends StatelessWidget {
  const EmptyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}

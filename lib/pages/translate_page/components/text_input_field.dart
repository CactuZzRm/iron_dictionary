import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 120,
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.backgroundColor,
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 100,
              offset: Offset(0.0, 1),
              blurStyle: BlurStyle.inner,
              ),
        ],
      ),
      child: TextField(
        maxLines: 2,
        style: theme.textTheme.headline2,
        decoration: InputDecoration(
          hintText: 'Введите слово или фразу',
          hintStyle: theme.textTheme.headline2,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

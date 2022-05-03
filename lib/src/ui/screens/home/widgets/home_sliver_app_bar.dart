import 'package:flutter/material.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }

  Widget _buildAppBar(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Text(
        'Samuel Jackson',
        style: theme.textTheme.headline1,
      ),
    );
  }
}

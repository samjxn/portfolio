import 'dart:ui';

import 'package:flutter/material.dart';

class Nameplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.tight(const Size.fromHeight(300)),
          child: const FlutterLogo(),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200.withOpacity(0.5),
                ),
                child: Center(
                  child: Text(
                    'Samuel\nJackson',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  const Nameplate({super.key});
}

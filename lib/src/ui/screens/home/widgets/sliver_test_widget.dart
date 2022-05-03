import 'package:flutter/material.dart';

import 'slivers/test_sliver.dart';

class SliverTestWidget extends SingleChildRenderObjectWidget {
  const SliverTestWidget({super.key, super.child});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderTestSliver();
  }
}

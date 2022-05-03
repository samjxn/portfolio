import 'package:flutter/rendering.dart';

class RenderTestSliver extends RenderSliverSingleBoxAdapter {
  @override
  void performLayout() {
    if (child == null) {
      geometry = SliverGeometry.zero;
      return;
    }
    final constraints = this.constraints;
    final boxContraints = constraints.asBoxConstraints();
    child!.layout(boxContraints, parentUsesSize: true);
    final childExtent = child!.size.height;

    final double paintedChildSize =
        calculatePaintOffset(constraints, from: 0.0, to: childExtent);
    final double cacheExtent =
        calculateCacheOffset(constraints, from: 0.0, to: childExtent);

    print(
        'slj constraints.viewportMainAxisExtent: ${constraints.viewportMainAxisExtent}');

    geometry = SliverGeometry(
      scrollExtent: childExtent,
      paintExtent: paintedChildSize * 3,
      maxPaintExtent: constraints.viewportMainAxisExtent,
    );
    setChildParentData(child!, constraints, geometry!);
  }
}

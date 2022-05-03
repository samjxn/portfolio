import 'dart:math';

import 'package:flutter/material.dart';
import 'package:native_scroll/native_scroll.dart';
import 'package:portfolio/src/ui/screens/home/widgets/home_sliver_app_bar.dart';
import 'package:portfolio/src/ui/screens/home/widgets/sliver_test_widget.dart';

const List<String> animals = [
  'dog',
  'cat',
  'zebra',
  'wombat',
  'rat',
  'snake',
  'spider',
  'hawk',
  'falcon',
  'coyote',
  'dingo',
  'alligator',
  'dragon',
  'beetle',
  'mouse',
  'vole',
  'mole',
  'opposum',
  'otter'
];

const List<String> adjectives = [
  'red',
  'blue',
  'funny',
  'lost',
  'thoughtful',
  'scared',
  'frantic',
  'sniffly',
  'dancing',
  'smoothe',
  'beeping',
  'chewy',
  'stinky',
  'safety',
  'bouncing',
  'canned',
  'fighting',
  'dizzy'
];

final Random r = Random(0);
String getRandomName() {
  final animalIdx = r.nextInt(animals.length);
  final animal = animals[animalIdx];

  final adjectiveIdx = r.nextInt(adjectives.length);
  final adjective = adjectives[adjectiveIdx];

  final after = r.nextBool();
  final middle = !after && r.nextBool();
  final start = !middle && !after;

  final b = StringBuffer();
  final n = r.nextInt(1000);

  void _writeIf(bool condition) {
    if (condition) b.write(n);
  }

  _writeIf(start);
  b.write(adjective);
  _writeIf(middle);
  b.write(animal);
  _writeIf(after);

  return b.toString();
}

final List<String> names = List<String>.generate(1024, (_) => getRandomName());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NativeScrollBuilder(builder: _buildAdaptiveContentWrapper),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget renderName(String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Placeholder(
          fallbackHeight: 14.0,
          fallbackWidth: 14.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(name),
        ),
      ],
    );
  }

  Widget _buildAdaptiveContentWrapper(
    BuildContext context,
    ScrollController scrollController,
  ) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        const SliverTestWidget(
          child: HomeSliverAppBar(),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => renderName(names[index]),
            childCount: names.length,
          ),
        ),
      ],
    );
  }
}

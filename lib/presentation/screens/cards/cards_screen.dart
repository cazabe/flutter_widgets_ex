import 'package:flutter/material.dart';

final cards = <Map<String, dynamic>>[
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});
  static const name = 'cards_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map(
          (card) => _CardTypeOne(
            label: card['label'],
            elevation: card['elevation`'],
          ),
        ),
        ...cards.map(
          (card) => _CardTypeTwo(
            label: card['label'],
            elevation: card['elevation`'],
          ),
        ),
      ],
    );
  }
}

class _CardTypeOne extends StatelessWidget {
  const _CardTypeOne({required this.label, required this.elevation});
  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        //Single child scroll view helps when widgets overflow
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardTypeTwo extends StatelessWidget {
  const _CardTypeTwo({required this.label, required this.elevation});
  final String label;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          side: BorderSide(color: colors.outline)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        //Single child scroll view helps when widgets overflow
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('$label - outlined'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

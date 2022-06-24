import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icon: Icons.window_outlined,
              color: Color.fromRGBO(62, 66, 107, 0.7),
              text: 'General'),
          _SingleCard(
            color: Color.fromARGB(176, 200, 42, 182),
            icon: Icons.train_outlined,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.shopping_bag_outlined,
              color: Color.fromARGB(176, 243, 44, 143),
              text: 'Shopping'),
          _SingleCard(
            color: Color.fromARGB(175, 240, 162, 79),
            icon: Icons.payments_outlined,
            text: 'Bils',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.window_outlined,
              color: Color.fromARGB(176, 33, 150, 190),
              text: 'Entertainment'),
          _SingleCard(
            color: Color.fromARGB(173, 131, 232, 137),
            icon: Icons.train_outlined,
            text: 'Grocery',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.cast_for_education_outlined,
              color: Color.fromARGB(175, 133, 141, 228),
              text: 'Education'),
          _SingleCard(
            color: Color.fromARGB(176, 200, 42, 182),
            icon: Icons.sports_outlined,
            text: 'Sport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.window_outlined,
              color: Color.fromRGBO(62, 66, 107, 0.7),
              text: 'General'),
          _SingleCard(
            color: Color.fromARGB(176, 200, 42, 182),
            icon: Icons.train_outlined,
            text: 'Transport',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _SingleCardBackground extends StatelessWidget {
  final Widget child;

  const _SingleCardBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}

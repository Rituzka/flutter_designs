import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Image
        const Image(image: AssetImage('assets/paisaje.jpg')),
        //Title
        const Title(),
        //Button section
        const ButtonSection(),
        //Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat augue ut feugiat consequat. Sed tempus et eros ac blandit. Nulla mi lectus, laoreet vel dolor non, efficitur porta tellus. Ut pharetra sit amet mauris nec mollis. Sed non sapien eu felis sollicitudin sodales. Duis blandit eleifend nibh at tincidunt. Proin tempor, nisl non pharetra finibus, risus lectus dapibus tellus, vitae congue nunc magna nec purus. Nulla malesuada, libero quis porttitor condimentum, magna nibh posuere magna, in tincidunt ex sapien et felis. In aliquet, massa id ullamcorper placerat, lacus metus feugiat turpis, lobortis laoreet sapien massa fermentum odio. Nam accumsan, quam eget porta pulvinar, urna eros ultricies magna, at ullamcorper massa mauris at metus. Donec a massa orci.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text('New Zealand landscape prints',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Peaceful lake', style: TextStyle(color: Colors.black45))
          ]),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.directions, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.lightBlue, fontSize: 15),
        )
      ],
    );
  }
}

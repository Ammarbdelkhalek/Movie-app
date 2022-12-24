import 'package:flutter/material.dart';

class NavigationBotton extends StatelessWidget {
  const NavigationBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
            onPressed: () {},
            child: Column(
              children: const [
                Icon(Icons.movie_creation_outlined),
                Text('Movies'),
              ],
            )),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.fireplace),
        ),
        MaterialButton(
            onPressed: () {},
            child: Column(
              children: const [
                Icon(Icons.favorite_border),
                Text('Movies'),
              ],
            )),
      ],
    );
  }
}

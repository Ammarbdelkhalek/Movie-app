import 'package:flutter/material.dart';

class MoviesCategoryWidget extends StatelessWidget {
  const MoviesCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'movies',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 80,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 20,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  buildMoviesCategoryItems(context),
              separatorBuilder: (context, index) => Container(),
              itemCount: 5),
        )
      ],
    );
  }

  Widget buildMoviesCategoryItems(context) {
    return Container(
      height: MediaQuery.of(context).size.height / 100,
      width: MediaQuery.of(context).size.width / 20,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        // shape: BoxShape.rectangle,
      ),
      child: const Center(child: Text('all')),
    );
  }
}

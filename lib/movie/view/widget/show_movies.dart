import 'package:flutter/material.dart';

class ShowMoviesWidget extends StatelessWidget {
  const ShowMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 5,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => showMovesItems(context),
              separatorBuilder: (context, index) => Container(),
              itemCount: 5),
        )
      ],
    );
  }

  Widget showMovesItems(context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
      ),
      width: MediaQuery.of(context).size.width / 8,
      height: MediaQuery.of(context).size.height / 8,
      child: Image.asset('assets/images/movie.jpg'),
    );
  }
}

import 'package:flutter/material.dart';

class NowPlayingWidget extends StatelessWidget {
  const NowPlayingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Now PLAYING ',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 5,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => buildPlayNowItems(context),
              separatorBuilder: (context, index) => Container(),
              itemCount: 5),
        )
      ],
    );
  }

  Widget buildPlayNowItems(context) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          shape: BoxShape.rectangle,
        ),
        width: MediaQuery.of(context).size.width / 8,
        height: MediaQuery.of(context).size.height / 8,
        child: Image.asset('assets/images/movie.jpg'));
  }
}

import 'package:flutter/material.dart';

class UpComingWidget extends StatelessWidget {
  const UpComingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Up Coming',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 5,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => buildUPComingItems(context),
              separatorBuilder: (context, index) => Container(),
              itemCount: 5),
        )
      ],
    );
  }

  Widget buildUPComingItems(context) {
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

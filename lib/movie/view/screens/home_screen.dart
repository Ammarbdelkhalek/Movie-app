import 'package:flutter/material.dart';
import 'package:movies_app/movie/view/widget/Now_playing_widget.dart';
import 'package:movies_app/movie/view/widget/movies_category_list_widget.dart';
import 'package:movies_app/movie/view/widget/navigation_botton.dart';
import 'package:movies_app/movie/view/widget/show_movies.dart';
import 'package:movies_app/movie/view/widget/up_coming_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const NowPlayingWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const UpComingWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const MoviesCategoryWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                const ShowMoviesWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const NavigationBotton()
              ],
            ),
          ),
        ));
  }
}

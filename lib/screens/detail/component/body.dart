import 'package:flutter/material.dart';
import 'package:movie_ui/models/movie.dart';
import 'package:movie_ui/screens/detail/component/detail_top_widgets.dart';
import 'package:movie_ui/screens/detail/component/title_info.dart';
import 'package:movie_ui/screens/home/component/body.dart';
import 'package:movie_ui/screens/home/component/genreList.dart';
import 'package:movie_ui/util/constants.dart';
import 'package:movie_ui/util/size_config.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailTopWidgets(movie: movie, defaultSize: defaultSize),
          TitleInfo(
            movie: movie,
            defaultSize: defaultSize,
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: defaultSize),
              child: Genres(
                genres: movie.genra,
              )),
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: defaultSize, horizontal: defaultSize * 2),
              child: Text(
                "Plot Summary",
                style: Theme.of(context).textTheme.headline6,
              )),
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: defaultSize, horizontal: defaultSize * 2),
              child: Text(
                "${movie.plot}",
                style: TextStyle(
                    fontSize: defaultSize * 1.6, color: kTextLightColor),
                maxLines: 5,
                overflow: TextOverflow.fade,
              )),
          Padding(
              padding: EdgeInsets.symmetric(
                  vertical: defaultSize, horizontal: defaultSize * 2),
              child: Text(
                "Cast & Crew",
                style: Theme.of(context).textTheme.headline6,
              )),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: defaultSize, horizontal: defaultSize * 2),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: summary(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> summary(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < movie.cast.length; i++) {
      children.add(
          Container(
            width: SizeConfig.defaultSize *8,
            child: Column(
              children: [
                CircleAvatar(backgroundImage: AssetImage(movie.cast[i]["image"])),
              SizedBox(height: SizeConfig.defaultSize,),
              Text("${movie.cast[i]["orginalName"]}",style: Theme.of(context).textTheme.bodyText1,maxLines: 2,textAlign: TextAlign.center,)
               , SizedBox(height: SizeConfig.defaultSize,),
                Text("${movie.cast[i]["movieName"]}",style: Theme.of(context).textTheme.bodyText1.copyWith(color: kTextLightColor ),maxLines: 2,textAlign: TextAlign.center,)

              ],
            ),
          ));
    }
    return children;
  }
}

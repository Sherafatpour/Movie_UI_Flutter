import 'package:flutter/material.dart';
import 'package:movie_ui/models/movie.dart';
import 'package:movie_ui/util/constants.dart';
import 'package:movie_ui/util/size_config.dart';
class DetailTopWidgets extends StatelessWidget {
  final Movie movie;
  final double defaultSize;

  const DetailTopWidgets({Key key,@required this.movie , @required this.defaultSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      height: SizeConfig.screenHeight * .4,
      child: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      movie.poster,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                )),
            height: SizeConfig.screenHeight * .4 - 50),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 100,
            width: SizeConfig.screenWidth * 0.9,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: Colors.black26,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "${movie.rating}/",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: defaultSize * 1.6)),
                        TextSpan(
                            text: "${movie.numOfRatings}\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: defaultSize * 1.2)),
                        TextSpan(
                            text: "${movie.numOfRatings *2} , ${movie.numOfRatings }",
                            style: TextStyle(
                                color: kTextLightColor,
                                fontSize: defaultSize * 1.2)),
                      ]),
                    )
                  ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.black54,
                      ),
                      Text("Rate This\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultSize * 1.3)),
                    ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: defaultSize * 3,
                      height: defaultSize * 3,
                      decoration: BoxDecoration(
                          color: Colors.green.shade500,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text("${movie.metascoreRating}", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: defaultSize*1.2 )),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "MetaScore \n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: defaultSize * 1.3)),

                        TextSpan(
                            text: "${movie.criticsReview} Critic reviews",
                            style: TextStyle(
                                color: kTextLightColor,
                                fontSize: defaultSize * 1.1)),
                      ]),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),SafeArea(child: BackButton(),)
      ]),
    );
  }
}

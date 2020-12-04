import 'package:flutter/material.dart';
import 'package:movie_ui/models/movie.dart';
import 'package:movie_ui/util/constants.dart';
class TitleInfo extends StatelessWidget {
  final Movie movie;
  final double defaultSize;

  const TitleInfo({Key key, this.movie, this.defaultSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Row(children: [
                      Text("${movie.year}",style: TextStyle(color: kTextLightColor),),
                      SizedBox(width: defaultSize,),
                      Text("PG-13",style: TextStyle(color: kTextLightColor),),
                      SizedBox(width: defaultSize,),
                      Text("1hr 45min",style: TextStyle(color: kTextLightColor),),
                    ],)
                  ],
                ),
              ),
              SizedBox(
                width: defaultSize * 5,
                height: defaultSize * 4,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {},
                  color: kSecondaryColor,
                  child: Center(
                      child: Icon(
                        Icons.add,
                        size: defaultSize * 1.6,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

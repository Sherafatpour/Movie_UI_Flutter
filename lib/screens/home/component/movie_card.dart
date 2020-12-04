import 'package:flutter/material.dart';
import 'package:movie_ui/models/movie.dart';
import 'package:movie_ui/screens/detail/component/detail_screen.dart';
import 'package:movie_ui/util/constants.dart';

class MovieCard extends StatelessWidget {
  final int index;

  const MovieCard({Key key, @required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: InkWell(
        onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(movie: movies_en[index],))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [kDefaultShadow],
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(
                        movies_en[index].poster,
                      ),
                      fit: BoxFit.cover),
                ),
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                movies_en[index].title,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  "${movies_en[index].rating}",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

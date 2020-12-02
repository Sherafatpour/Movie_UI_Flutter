import 'package:flutter/material.dart';
import 'package:movie_ui/util/constants.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int itemSelected = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(context, index)),
    );
  }

  Padding buildCategory(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: (){
          setState(() {
            itemSelected = index;

          });

        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight:
                  itemSelected == index ? FontWeight.w600 : FontWeight.normal,
                  color: itemSelected == index
                      ? Colors.black
                      : Colors.black.withOpacity(0.4)),
            ),
            Container(
              width: 40,
              height: 6,
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: itemSelected == index ? Colors.pink : Colors.transparent,
                  borderRadius: BorderRadius.circular(6)),
            )
          ],
        ),
      ),
    );
  }
}
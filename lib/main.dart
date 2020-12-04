import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_ui/screens/home/component/body.dart';
import 'package:movie_ui/util/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: Colors.black),
        backgroundColor: Colors.white,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: buildAppBar(defaultSize),
      body: Body(),
    );

  }

  AppBar buildAppBar(double defaultSize) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {  },),
      actions: <Widget>[IconButton(icon: Icon(
      Icons.search,
      color: Colors.black,
      size: defaultSize * 3,
      semanticLabel: 'Text to announce in accessibility modes',
    ), onPressed: () {  },)],
    );
  }
}

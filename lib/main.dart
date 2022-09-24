import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/screens/product/components/body.dart';
import 'package:furniture_app/screens/menu/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture app',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _Myhomepage(),
    );
  }
}

class _Myhomepage extends StatefulWidget {
  const _Myhomepage({Key key}) : super(key: key);

  @override
  State<_Myhomepage> createState() => __MyhomepageState();
}

class __MyhomepageState extends State<_Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(backgroundColor: Colors.white, body: ProductsScreen()));
  }
}

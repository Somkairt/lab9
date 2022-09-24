import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/menu/menu.dart';
import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liew index X custus"),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/notification.svg"),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromARGB(255, 87, 255, 20),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Furniture Menu"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductsScreen()));
            },
          ),
          ListTile(
            title: Text("Castus Menu"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MyMenu()));
            },
          ),
        ],
      )),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text('SARA HOME'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
      backgroundColor: Color.fromARGB(255, 59, 0, 77),
    );
  }
}

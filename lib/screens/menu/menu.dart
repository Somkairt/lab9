import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/screens/menu/Drinkmenu.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/screens/menu/Foodmenu.dart';
import 'package:furniture_app/screens/menu/Drinkmenu.dart';
import 'package:furniture_app/screens/product/products_screen.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({Key key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Liew index X custus"),
            actions: <Widget>[
              IconButton(
                icon: SvgPicture.asset("assets/icons/notification.svg"),
                onPressed: () {},
              ),
            ],
            backgroundColor: Color.fromARGB(255, 59, 0, 77),
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
          backgroundColor: Colors.white,
          body: TabBarView(children: [
            Foodmenu(),
            Drinkmanu(),
          ]),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: "castus Menu",
              ),
              Tab(
                text: " plant pot Menu",
              )
            ],
            labelColor: Color.fromARGB(255, 59, 0, 77),
          ),
        ));
  }
}

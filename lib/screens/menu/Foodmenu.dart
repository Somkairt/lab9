import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class Foodmenu extends StatefulWidget {
  const Foodmenu({Key key}) : super(key: key);

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu> {
  List<List<dynamic>> foodlists = [
    [
      "https://cf.shopee.co.th/file/9588f34115591f9f501366124f8323e4",
      "ฮาโวเทียหยดน้ำ (Haworthia cooperi)",
      580,
      0
    ],
    [
      "https://cf.shopee.co.th/file/1c937a3f93fec82b872f05ce6dc74a85",
      "หมวกสังฆราช (Bishop's Cap Cactus)",
      1000,
      0
    ],
    [
      "https://cf.shopee.co.th/file/7818c035c7af35f9ff74aa57920f9543",
      "แมมขนนก (Feather Cactus)",
      450,
      0
    ],
    [
      "https://cf.shopee.co.th/file/c094abe5629f1e5050b79b4c4c749e03",
      "ยิมโนแคคตัส (Moon cactus)",
      1200,
      0
    ],
    [
      "https://cf.shopee.co.th/file/c5d25cecd625caa84d826331f4f14e17",
      "แคคตัสหูกระต่าย (Bunny Ear Cactus)",
      340,
      0
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodlists.length,
      itemBuilder: (_, index) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(
                      foodlists[index][0],
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${foodlists[index][1]}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${foodlists[index][2]} ฿",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 17,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.orange,
                    label: Text(
                      "สั่งซื้อ",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

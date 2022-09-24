import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Drinkmanu extends StatefulWidget {
  const Drinkmanu({Key key}) : super(key: key);

  @override
  State<Drinkmanu> createState() => _DrinkmenuState();
}

class _DrinkmenuState extends State<Drinkmanu> {
  List<List<dynamic>> potlists = [
    [
      "https://cf.shopee.co.th/file/098c7f13278468947245a79bd378d2ca",
      "กระถางต้นไม้พลาสติก",
      39,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec5QmNkXoAcZAt_?format=jpg&name=medium",
      "กระถางพลาสติก สไตล์หินอ่อน ",
      59,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec5QmNnWsAE0BOF?format=jpg&name=medium",
      "กระถางเซรามิก สี่เหลี่ยมมน ",
      69,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec5QmNkWsAgKzk0?format=jpg&name=medium",
      "กระถางสไตล์นอร์ดิกเคลือบเงา ",
      229,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec5QmNrXgAseN63?format=jpg&name=small",
      "กระถางเซรามิกแบบมีขาตั้ง ",
      169,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec5S-aAXoAA7n8X?format=jpg&name=medium",
      "กระถางพลาสติก ทรง6เหลี่ยม",
      49,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec-TKvDUMAEqK2k?format=jpg&name=small",
      "กระถางปูนทรงเรขาคณิต ",
      99,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
    [
      "https://pbs.twimg.com/media/Ec-c8JEUEAAsM8s?format=jpg&name=medium",
      "กระถางปูนทรงเรขาคณิต ",
      59,
      "มาเพิ่มความน่ารักให้กับน้องกันค่ะ :)"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: potlists.length,
        itemBuilder: (_, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(children: [
                Row(
                  children: [
                    Image.network(
                      potlists[index][0],
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
                                "${potlists[index][1]}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${potlists[index][2]} ฿",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "${potlists[index][3]}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
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
                      )),
                ),
              ]),
            ),
          );
        });
  }
}

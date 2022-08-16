import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/current_device.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:url_launcher/url_launcher.dart';

Widget workCard(BuildContext context, bool isMobile, int index) {
  return FutureBuilder<List<ProjectModel>>(
    future: someFun(context),
    builder: (context, snapshot) {
      String currentDevice = currentdevice(context);
      double descSize;
      double cardWidth;
      if (currentDevice == 'mobile') {
        descSize = 18;
        cardWidth = 400;
      } else if (currentDevice == 'tab') {
        descSize = 10;
        cardWidth = 450;
      } else if (currentDevice == 'other') {
        descSize = 10;
        cardWidth = 400;
      } else if (currentDevice == 'other1') {
        descSize = 10;
        cardWidth = 400;
      } else if (currentDevice == 'other2') {
        descSize = 10;
        cardWidth = 400;
      } else {
        descSize = 12;
        cardWidth = 450;
      }

      // var mydata = json.decode(snapshot.data.toString());
      // String imgurl = mydata[index]["img"];
      // String imgurl = tmp['img'];

      // ListView.builder(
      //     itemCount: tmp.length,
      //     itemBuilder: (context, i) {
      //       ProjectModel ft = tmp[i];
      //     });

      if (snapshot.data == null) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        List<ProjectModel> tmp = snapshot.data!;
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tmp.length,
            itemBuilder: (context, i) {
              ProjectModel ft = tmp[i];
              String imgurl = ft.img;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: cardWidth,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                      colors: [Colors.deepPurple, Colors.blue],
                    ),
                  ),
                  child: Card(
                      color: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                imgurl,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            ft.name, // mydata[index]["name"],
                            style: TextStyle(
                                color: MyTheme.solidBlack,
                                fontSize: 21,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            ft.desc, //  mydata[index]["desc"],
                            style: TextStyle(
                                color: MyTheme.solidBlack,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: descSize),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              // final Uri url = Uri.parse(mydata[index]["url"]);
                              final Uri url = Uri.parse(ft.url);
                              if (!await launchUrl(url)) {
                                throw 'Could not launch $url';
                              }
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.greenAccent)),
                            child: Text(
                              "Click for more",
                              style: TextStyle(
                                  color: MyTheme.solidBlack,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                        ],
                      )),
                ),
              );
            });
      }
    },
  );
}
//  height: isMobile ? 210 : 250,
// width: isMobile ? 170 : 225,

Future<List<ProjectModel>> someFun(BuildContext context) async {
  String js =
      await DefaultAssetBundle.of(context).loadString("assets/files/data.json");
  var details = json.decode(js);
  var v = details;
  List<ProjectModel> se = [];

  for (var x in v) {
    ProjectModel ft = ProjectModel(
      id: x['id'],
      name: x['name'],
      desc: x['desc'],
      color: x['color'],
      url: x['url'],
      img: x['img'],
    );
    se.add(ft);
  }
  return se;
}

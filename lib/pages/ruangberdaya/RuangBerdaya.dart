import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/ruangberdaya/CommRuangBerdaya.dart';
import 'package:posithiva/pages/ruangberdaya/SaveRuangBerdaya.dart';
import 'package:posithiva/theme.dart';

class RuangBerdaya extends StatefulWidget {
  const RuangBerdaya({super.key});

  @override
  State<RuangBerdaya> createState() => _RuangBerdayaState();
}

class _RuangBerdayaState extends State<RuangBerdaya> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context)
                    .openDrawer(); // Membuka Drawer saat leading gambar diklik
              },
              child: Image.asset(
                "assets/images/drawer.png",
                width: 30,
                height: 30,
                scale: 1.5,
              ),
            );
          },
        ),
        title: Column(
          children: [
            Text(
              "Lokasi Terkini",
              style: poppins.copyWith(color: Colors.grey, fontSize: 12),
            ),
            Text(
              "Singaraja",
              style: poppins.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Builder(builder: (context) {
              return GestureDetector(
                  onTap: () {
                    Scaffold.of(context)
                        .openEndDrawer(); // Membuka Drawer saat leading gambar diklik
                  },
                  child: Image.asset("assets/images/avatar.png",
                      width: 30, height: 30));
            }),
          ),
        ],
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      endDrawer : EndDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/back.png",
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Kembali",
                        style: poppins.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(birutua)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Ruang Berdaya",
                style: lora.copyWith(fontSize: 35, color: birutua),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: width,
                height: height - 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        width: width,
                        height: 230,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 158, 158, 158),
                                  width: 2)),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/avatar.png",
                                  scale: 0.7,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mario Mariono",
                                      style: poppins.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "UVI-TLD",
                                      style: poppins.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: width,
                              height: 100,
                              margin: const EdgeInsets.only(top: 10),
                              child: RichText(
                                  text: TextSpan(
                                style: poppins.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w100, color: Colors.grey),
                                children: [
                                  TextSpan(
                                      text:
                                          "Halo,saya Mario! Sudah berobat 2 tahun,Mau Tanya,disini mungkin ada rekan-rekan yang mau berbagi pengalaman berobatnya..."),
                                  TextSpan(
                                      text: "(lihat lagi)",
                                      style: poppins.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.blue))
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.comment_outlined,
                                              size: 20,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "2",
                                              style: poppins.copyWith(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.favorite_outline_outlined,
                                              size: 20,
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "5",
                                              style: poppins.copyWith(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.file_upload_outlined,
                                    size: 20,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CommRuangBerdaya();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 26),
              width: 70,
              height: 70,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70 / 2), color: birutua),
              child: Icon(
                Icons.comment_outlined,
                size: 45,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SaveRuangBerdaya();
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 26),
              width: 70,
              height: 70,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70 / 2), color: birutua),
              child: Icon(
                Icons.file_download_outlined,
                size: 45,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

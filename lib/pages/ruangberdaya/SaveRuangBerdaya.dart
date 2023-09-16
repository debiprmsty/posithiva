import 'package:flutter/material.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/caridoctor/ArvPage.dart';
import 'package:posithiva/pages/caridoctor/CariDoctor.dart';
import 'package:posithiva/pages/obatku/ObatKuPage.dart';
import 'package:posithiva/pages/riwayatkonsul/RiwayatKonsultasi.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
import 'package:posithiva/theme.dart';

class SaveRuangBerdaya extends StatefulWidget {
  const SaveRuangBerdaya({super.key});

  @override
  State<SaveRuangBerdaya> createState() => _SaveRuangBerdayaState();
}

class _SaveRuangBerdayaState extends State<SaveRuangBerdaya> {
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
              Container(
                width: width,
                padding: const EdgeInsets.all(8),
                height: height - 80,
                color: Colors.grey[400],
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
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UVI-TLD",
                              style: poppins.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w100),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: width,
                      height: 500,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      color: Colors.grey[500],
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        width: width,
                        height: 40,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.orange[700])),
                            onPressed: () {},
                            child: Text(""))),
                    Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        width: width,
                        height: 40,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(birutua)),
                            onPressed: () {},
                            child: Text(""))),
                    Center(
                      child: Container(
                          margin: const EdgeInsets.only(bottom: 6),
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey[600])),
                              onPressed: () {},
                              child: Text(""))),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

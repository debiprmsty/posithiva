import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/janjitemu/JanjiTemuPage.dart';
import 'package:posithiva/theme.dart';

class CariDoctor extends StatefulWidget {
  const CariDoctor({super.key});

  @override
  State<CariDoctor> createState() => _CariDoctorState();
}

class _CariDoctorState extends State<CariDoctor> {
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
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.white,
            width: 350,
            height: height * 1.10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  child: Row(
                    children: [
                      Image.asset("assets/images/back.png",width: 15,height: 15,),
                      const SizedBox(
                        width: 6,
                      ),
                      Text("Kembali",style: poppins.copyWith(color: Colors.white),)
                    ],
                  ),
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(birutua)),)
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Cari Dokter",
                  style: lato.copyWith(fontSize: 35, color: birutua),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: width,
                  height: height * 0.75,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(bottom: 8),
                          width: width,
                          height: 243,
                          decoration: BoxDecoration(
                            color: birutua,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          "assets/images/hu1.png",
                                          scale: 0.6,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "dr. Andreana Susilo",
                                          style: lora.copyWith(
                                              fontSize: 24, color: Colors.white),
                                        ),
                                        Text(
                                          "Puskesmas Buleleng I",
                                          style: lato.copyWith(color: Colors.white, fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 88,
                                              height: 18,
                                              margin: const EdgeInsets.only(bottom: 5),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[350],
                                                  borderRadius:
                                                      BorderRadius.circular(20)),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    top: -1,
                                                    left: 0,
                                                    bottom: -1,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/check.png",
                                                          scale: 0.7,
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 4),
                                                          child: Container(
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "ONLINE",
                                                              style:
                                                                  lato.copyWith(fontSize: 14.5, color: Colors.black),
                                                                  textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              width: 88,
                                              height: 18,
                                              margin: const EdgeInsets.only(bottom: 5),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[350],
                                                  borderRadius:
                                                      BorderRadius.circular(20)),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    top: -1,
                                                    left: 0,
                                                    bottom: -1,
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                          "assets/images/check.png",
                                                          scale: 0.7,
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(bottom: 4),
                                                          child: Container(
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              "ON-SITE",
                                                              style:
                                                                  lato.copyWith(fontSize: 14.5, color: Colors.black),
                                                                  textAlign: TextAlign.center,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 156.3,
                                        height: 75,
                                        margin: const EdgeInsets.only(left: 7),
                                        decoration: BoxDecoration(
                                            color: biruabu2,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10))),
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 7,
                                          right: 0,
                                          child: Container(
                                            width: 120,
                                            height: 22,
                                            color: biruabu,
                                            child: Positioned(
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Text(
                                                  "KAMIS, 13 JULI 2023",
                                                  style: lato.copyWith(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: 27,
                                        left: 3,
                                        right: 0,
                                        child: Column(
                                          children: [
                                            Text(
                                              "17.00 - 19.00",
                                              style: lato.copyWith(
                                                  fontSize: 23,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "ANTREAN TERSISA: 3",
                                              style: poppins.copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w200,
                                                  color: birumuda),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 156.3,
                                        height: 75,
                                        margin: const EdgeInsets.only(left: 7),
                                        decoration: BoxDecoration(
                                            color: biruabu2,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10))),
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 7,
                                          right: 0,
                                          child: Container(
                                            width: 120,
                                            height: 22,
                                            color: biruabu,
                                            child: Positioned(
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Text(
                                                  "SABTU, 13 JULI 2023",
                                                  style: lato.copyWith(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: 27,
                                        left: 3,
                                        right: 0,
                                        child: Column(
                                          children: [
                                            Text(
                                              "17.00 - 19.00",
                                              style: lato.copyWith(
                                                  fontSize: 23,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "ANTREAN TERSISA: 3",
                                              style: poppins.copyWith(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w200,
                                                  color: birumuda),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                width: width,
                                height: 40,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                      EdgeInsets.symmetric(horizontal: 12, vertical: 2)
                                    ),
                                    backgroundColor: MaterialStatePropertyAll(Colors.orange[700]),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0), // Sesuaikan nilai radius sesuai kebutuhan
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const JanjiTemuPage();
                                    }));
                                  },
                                  child: Text(
                                    "BUAT JADWAL KONSULTASI",
                                    style: lato.copyWith(
                                        fontSize: 18, color: Colors.white),
                                  )))
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

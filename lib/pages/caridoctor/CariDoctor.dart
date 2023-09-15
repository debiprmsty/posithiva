import 'package:flutter/material.dart';
import 'package:posithiva/pages/obatku/ObatKuPage.dart';
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
      drawer: Drawer(
        backgroundColor: biruabu,
        width: width - width * 0.5 + 30,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
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
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ObatkuPage();
                  }));
                },
                child: Container(
                  width: 193,
                  height: 88,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: birutua),
                  child: Text(
                    "Obatku",
                    style: lato.copyWith(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Halo");
                },
                child: Container(
                  width: 193,
                  height: 88,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: birutua),
                  child: Text(
                    "Cari Dokter",
                    style: lato.copyWith(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Halo");
                },
                child: Container(
                  width: 193,
                  height: 88,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: birutua),
                  child: Text(
                    "Info ARV-ku",
                    style: lato.copyWith(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Halo");
                },
                child: Container(
                  width: 193,
                  height: 88,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: birutua),
                  child: Text(
                    "Riwayat Konsultasi",
                    style: lato.copyWith(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Halo");
                },
                child: Container(
                  width: 193,
                  height: 88,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: birutua),
                  child: Text(
                    "Kalender Berobat",
                    style: lato.copyWith(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Halo");
                },
                child: Container(
                  width: 193,
                  height: 88,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: birutua),
                  child: Text(
                    "Ruang Berdaya",
                    style: lato.copyWith(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22),
                  ),
                ),
              ),
              // Tambahkan item-menu atau widget lainnya di sini
            ],
          ),
        ),
      ),
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
                        height: 222,
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
                                  margin: const EdgeInsets.only(bottom: 12),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/hu1.png",
                                        scale: 0.8,
                                      )),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "dr.Andrea Susilo",
                                      style: lato.copyWith(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    Text(
                                      "Puskesmas Buleleng 1",
                                      style: lato.copyWith(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 12,
                                          margin:
                                              const EdgeInsets.only(bottom: 5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Stack(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    "assets/images/check.png",
                                                    width: 20,
                                                    height: 75,
                                                  ),
                                                  Text(
                                                    "ONLINE",
                                                    style: lato.copyWith(
                                                        fontSize: 6),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 12,
                                          margin: const EdgeInsets.only(
                                              left: 5, bottom: 5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Stack(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    "assets/images/check.png",
                                                    width: 20,
                                                    height: 75,
                                                  ),
                                                  Text(
                                                    "ON-SITE",
                                                    style: lato.copyWith(
                                                        fontSize: 6),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 155,
                                      height: 60,
                                      margin: const EdgeInsets.only(left: 7),
                                      decoration: BoxDecoration(
                                          color: biruabu2,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 7,
                                        right: 0,
                                        child: Container(
                                          width: 120,
                                          height: 15,
                                          color: birumuda3,
                                          child: Text(
                                            "KAMIS,13 JULI 2023",
                                            style: lato.copyWith(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                    Positioned(
                                      top: 18,
                                      left: 3,
                                      right: 0,
                                      child: Column(
                                        children: [
                                          Text(
                                            "17.00 - 19.00",
                                            style: lato.copyWith(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "ANTREAN TERSISA: 3",
                                            style: poppins.copyWith(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w200,
                                                color: birumuda),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 60,
                                      margin: const EdgeInsets.only(left: 7),
                                      decoration: BoxDecoration(
                                          color: biruabu2,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                    ),
                                    Positioned(
                                        top: 0,
                                        left: 7,
                                        right: 0,
                                        child: Container(
                                          width: 100,
                                          height: 15,
                                          color: birumuda3,
                                          child: Text(
                                            "SABTU,13 JULI 2023",
                                            style: lato.copyWith(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        )),
                                    Positioned(
                                      top: 18,
                                      left: 3,
                                      right: 0,
                                      child: Column(
                                        children: [
                                          Text(
                                            "17.00 - 19.00",
                                            style: lato.copyWith(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "ANTREAN TERSISA: 3",
                                            style: poppins.copyWith(
                                                fontSize: 8,
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
                              height: 9,
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                width: width,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        padding: MaterialStatePropertyAll(
                                            EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 2)),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.orange[800])),
                                    onPressed: () {
                                      print('halo');
                                    },
                                    child: Text(
                                      "BUAT JADWAL KONSULTASI",
                                      style: lato.copyWith(
                                          fontSize: 13, color: Colors.white),
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
    );
  }
}

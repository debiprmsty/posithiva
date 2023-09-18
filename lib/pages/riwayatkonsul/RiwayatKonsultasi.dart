import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/riwayatkonsul/DetailRiwayatKonsul.dart';
import 'package:posithiva/theme.dart';

class RiwayatKonsultasi extends StatefulWidget {
  const RiwayatKonsultasi({super.key});

  @override
  State<RiwayatKonsultasi> createState() => _RiwayatKonsultasiState();
}

class _RiwayatKonsultasiState extends State<RiwayatKonsultasi> {
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
                "Riwayat Konsultasi",
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
                        margin: const EdgeInsets.only(bottom: 10),
                        width: width,
                        height: 178,
                        decoration: BoxDecoration(
                          color: birutua,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Image.asset(
                                      "assets/images/hu1.png",
                                      scale: 0.5,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "dr. Andreana Susilo",
                                      style: lora.copyWith(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                    Text(
                                      "Puskesmas Buleleng I",
                                      style: lato.copyWith(color: Colors.white, fontSize: 16.9),
                                    ),
                                    Text(
                                      "Senin 10 Juli 2023 | 18.34 WITA",
                                      style: lato.copyWith(color: Colors.white, fontSize: 15.5),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: 88,
                                      height: 18,
                                      margin: const EdgeInsets.only(bottom: 15),
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
                                  ],
                                ),
                              ],
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
                                  return const DetailRiwayatKonsul();
                                }));
                              },
                              child: Text(
                                "LIHAT HISTORI KONSULTASI",
                                style: lato.copyWith(
                                    fontSize: 18, color: Colors.white),
                              ))
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
    );
  }
}

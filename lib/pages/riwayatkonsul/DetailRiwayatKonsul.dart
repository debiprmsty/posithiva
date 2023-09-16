import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/theme.dart';

class DetailRiwayatKonsul extends StatefulWidget {
  const DetailRiwayatKonsul({super.key});

  @override
  State<DetailRiwayatKonsul> createState() => _DetailRiwayatKonsulState();
}

class _DetailRiwayatKonsulState extends State<DetailRiwayatKonsul> {
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 8),
                width: width,
                height: 125,
                decoration: BoxDecoration(
                  color: birutua,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.asset(
                                "assets/images/hu1.png",
                                scale: 0.5,
                              )),
                        ),
                        const SizedBox(
                          width: 11,
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
                              style: lato.copyWith(color: Colors.white, fontSize: 16.9),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 88,
                              height: 18,
                              margin: const EdgeInsets.only(bottom: 4),
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
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Anamnesis/Pemeriksaan Fisik/Lab',
                style: lato.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                width: width,
                height: 180,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                  style: poppins.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "TTV:",
                        style: poppins.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(
                        text:
                            "TD 120/80,HR 88 RR 18,SUHU 36,6^C\nCompos Mentis\nTidak Ada Keluhan"),
                  ],
                )),
              ),
              const SizedBox(height: 10),
              Text(
                'Terapi/Tata Laksana',
                style: lato.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                width: width,
                height: 200,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                  style: poppins.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
                  children: [
                    TextSpan(text: "Lanjut Pengobatan ARV sesuai regimen awal"),
                  ],
                )),
              ),
              const SizedBox(height: 10),
              Text(
                'Saran',
                style: lato.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                width: width,
                height: 180,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                  style: poppins.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "Pertahankan ketaatan waktu dosis minum obat"),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

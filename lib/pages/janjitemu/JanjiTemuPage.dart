import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/janjitemu/JanjiTemuEndPage.dart';
import 'package:posithiva/theme.dart';

class JanjiTemuPage extends StatefulWidget {
  const JanjiTemuPage({super.key});

  @override
  State<JanjiTemuPage> createState() => _JanjiTemuPageState();
}

class _JanjiTemuPageState extends State<JanjiTemuPage> {
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
                Scaffold.of(context).openDrawer(); // Membuka Drawer saat leading gambar diklik
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
            Text("Lokasi Terkini",style: poppins.copyWith(color: Colors.grey,fontSize: 12),),
            Text("Singaraja",style: poppins.copyWith(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer(); // Membuka Drawer saat leading gambar diklik
                  },
                  child: Image.asset("assets/images/avatar.png", width: 30, height: 30));
              }
            ),
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
            width: 360,
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
                  height: 20,
                ),
                Text(
                  "Cari Faskes Terdekat",
                  style: lato.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  decoration: InputDecoration(
                      hintText: 'Ketik lokasi anda saat ini',
                      hintStyle: const TextStyle(color: Colors.grey),
                      focusColor: Colors.black,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Anda sedang membuat jadwal konsultasi..", style: latoItalic.copyWith(color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic),),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 0),
                      margin: const EdgeInsets.only(bottom: 12),
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
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "dr. Andreana Susilo",
                            style: lora.copyWith(
                                fontSize: 28, color: Colors.black),
                          ),
                          Text(
                            "Puskesmas Buleleng I",
                            style: lato.copyWith(color: Colors.black, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 95,
                                height: 23,
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius:
                                        BorderRadius.circular(5)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: -1,
                                      bottom: -1,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/check.png",
                                            scale: 0.6,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 2),
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "ONLINE",
                                                style:
                                                  lato.copyWith(fontSize: 15, color: Colors.black), textAlign: TextAlign.center,
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
                                width: 95,
                                height: 23,
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius:
                                        BorderRadius.circular(5)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: -1,
                                      bottom: -1,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/images/check.png",
                                            scale: 0.6,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 2),
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "ON-SITE",
                                                style:
                                                  lato.copyWith(fontSize: 15, color: Colors.black), textAlign: TextAlign.center,
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
                const SizedBox(
                  height: 10,
                ),
                Text("Pilih Tanggal Konsultasi", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 175,
                          height: 85,
                          decoration: BoxDecoration(
                              color: birumuda2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: birumuda,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              )
                            ),
                            width: 120,
                            height: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "KAMIS, 13 JULI 2023",
                                style: lato.copyWith(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ),
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Text(
                                "17.00 - 19.00",
                                style: lato.copyWith(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 13,
                                    margin: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius:
                                            BorderRadius.circular(5)),
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
                                                scale: 1,
                                              ),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 1),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "ONLINE",
                                                    style:
                                                        lato.copyWith(fontSize: 10),
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
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      "ANTREAN TERSISA: 3",
                                      style: poppins.copyWith(
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 175,
                          height: 85,
                          decoration: BoxDecoration(
                              color: birumuda2,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: birumuda,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                              )
                            ),
                            width: 120,
                            height: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "SABTU, 15 JULI 2023",
                                style: lato.copyWith(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ),
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Text(
                                "17.00 - 19.00",
                                style: lato.copyWith(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 13,
                                    margin: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[400],
                                        borderRadius:
                                            BorderRadius.circular(5)),
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
                                                scale: 1,
                                              ),
                                              const SizedBox(
                                                width: 3,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 1),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "ON-SITE",
                                                    style:
                                                        lato.copyWith(fontSize: 10),
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
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      "ANTREAN TERSISA: 4",
                                      style: poppins.copyWith(
                                          fontSize: 10,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Konfirmasi Data Medis Anda", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      width: width,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama Lengkap (Sesuai KTP)", style: poppins.copyWith(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
                            Text("Mario Mariono", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nomor BPJS/Nomor Rekam Medis", style: poppins.copyWith(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
                            Text("7292614 111 391", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jenis Obat Antiretroviral", style: poppins.copyWith(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
                            Text("TLD", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Data Antropometri (TB/BB)", style: poppins.copyWith(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
                            Text("174 cm | 63 kg", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Status VL & CD4 Terakhir", style: poppins.copyWith(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
                            Text("UVL | 600 copy/mm^3", style: lato.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: width,
                  height: 47,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange[700]),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const JanjiTemuEndPage();
                      }));
                    },
                    child: Text('BUAT JANJI', style: lato.copyWith(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
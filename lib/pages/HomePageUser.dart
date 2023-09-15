import 'dart:io';

import 'package:flutter/material.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/pages/alarm/AlarmPage.dart';
import 'package:posithiva/pages/janjitemu/JanjiTemuPage.dart';
import 'package:posithiva/pages/reminder/ReminderObatPage.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
import 'package:posithiva/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:image_picker/image_picker.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({super.key});

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  final imageController = TextEditingController();

  late File? _getImage;

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    setState(() {
      _getImage = File(pickedFile!.path);
    });

    imageController.text = _getImage!.path;
  }

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
        endDrawer: Drawer(
          backgroundColor: biruabu,
          width: width - width * 0.5 + 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                Container(
                  width: 193,
                  margin: const EdgeInsets.only(top: 30),
                  height: 100,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selamat Malam!",
                            style: poppins.copyWith(
                                color: Colors.black, fontSize: 10),
                          ),
                          Text(
                            "Mario \nMariono",
                            textAlign: TextAlign.left,
                            style: poppins.copyWith(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "BPJS. 7292614 111 391",
                            style: poppins.copyWith(
                                color: Colors.black, fontSize: 8),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 70,
                        width: 63,
                        margin: const EdgeInsets.only(bottom: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/avatar.png",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfilUserPage();
                    }));
                  },
                  child: Container(
                    width: 193,
                    height: 88,
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: birutua),
                    child: Text(
                      "Profile User",
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
                        borderRadius: BorderRadius.circular(10),
                        color: birutua),
                    child: Text(
                      "Settings",
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
                        borderRadius: BorderRadius.circular(10),
                        color: birutua),
                    child: Text(
                      "Tentang POSITHIVA",
                      style: lato.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                Container(
                  width: 165,
                  height: 36,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.red[500]),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }));
                      },
                      child: Text(
                        'LOG OUT',
                        style: poppins.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )),
                ),
                // Tambahkan item-menu atau widget lainnya di sini
              ],
            ),
          ),
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
                    "Pasienku",
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
                    "Jadwalku",
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
                    "Praktekku",
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
                    "Layanan Kirim Obat Pasien",
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
          child: Center(
            child: Container(
              height: height * 1.05,
              margin: EdgeInsets.only(top: 20),
              color: Colors.white,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Text(
                    "Ruang Konsultasi",
                    style: lato.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
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
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Column(
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
                                        margin: const EdgeInsets.only(bottom: 5),
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
                                                  style:
                                                      lato.copyWith(fontSize: 6),
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
                                                  style:
                                                      lato.copyWith(fontSize: 6),
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 145,
                                  height: 60,
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
                              width: 1,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 145,
                                  height: 60,
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
                          height: 6,
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7),
                            width: width,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 2)),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.blue[900])),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const JanjiTemuPage();
                                  }));
                                },
                                child: Text(
                                  "BUAT JADWAL DENGAN DOKTER",
                                  style: lato.copyWith(
                                      fontSize: 13, color: Colors.white),
                                )))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 350,
                    height: 41,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.deepOrange[400]),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePageUser();
                          }));
                        },
                        child: Text(
                          'LIHAT JADWAL DOKTER LAINNYA',
                          style: poppins.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ARV Anda",
                    style: lato.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 178,
                            height: 100,
                            decoration: BoxDecoration(
                                color: birutua,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                width: 172,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: birumuda3,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Text(
                                  "SISA OBAT ANDA",
                                  style: poppins.copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                          Positioned(
                              top: 27,
                              left: 5,
                              right: 0,
                              child: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 11,
                                        color: Colors.grey,
                                        child: Text(
                                          "OBAT AWAL",
                                          style: poppins.copyWith(
                                              fontSize: 8, color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        "30",
                                        style: poppins.copyWith(
                                            fontSize: 27,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "BUTIR",
                                        style: poppins.copyWith(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 4,
                                    height: 65,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 29,
                                        height: 11,
                                        color: biruabu,
                                        child: Text(
                                          "SISA",
                                          style: poppins.copyWith(
                                              fontSize: 8, color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        "21",
                                        style: poppins.copyWith(
                                            fontSize: 27,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "BUTIR",
                                        style: poppins.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 11,
                                        child: Text(
                                          "SCAN OBAT",
                                          style: poppins.copyWith(
                                              fontSize: 7, color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  height: 150.0,
                                                  child: Column(
                                                    children: [
                                                      ListTile(
                                                        leading: Icon(
                                                            Icons.camera_alt),
                                                        title: Text('Camera'),
                                                        onTap: () {
                                                          _pickImage(ImageSource
                                                              .camera);
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      ListTile(
                                                        leading: Icon(Icons
                                                            .photo_library),
                                                        title: Text('Gallery'),
                                                        onTap: () {
                                                          _pickImage(ImageSource
                                                              .gallery);
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Image.asset(
                                            "assets/images/camera.png",
                                            scale: 1,
                                          ))
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 143,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 200,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.orange[700],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Text(
                                "TANGGAL AMBIL \n OBAT KEMBALI",
                                style: poppins.copyWith(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 32,
                              left: 28,
                              right: 0,
                              child: Row(
                                children: [
                                  Text(
                                    "02",
                                    style: poppins.copyWith(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Agustus \n 2023",
                                    style: poppins.copyWith(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                ],
                              )),
                          Positioned(
                              top: 79,
                              left: 8,
                              right: 8,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return const ReminderObatPage();
                                  }));
                                },
                                child: Container(
                                  width: 120,
                                  height: 15,
                                  color: birutua,
                                  child: Text(
                                    "INGATKAN SAYA",
                                    style: poppins.copyWith(
                                        fontSize: 10, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Alarm ART",
                        style: lato.copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Text(
                        "Grafik VL",
                        style: lato.copyWith(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: width,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Stack(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 180,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return const AlarmPage();
                                      }));
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.orange[700]),
                                        padding: MaterialStatePropertyAll(
                                            EdgeInsets.symmetric(
                                                vertical: 8, horizontal: 10))),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/alarm.png"),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "PASANG ALARM",
                                          style: poppins.copyWith(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Status Anda",
                                style: lato.copyWith(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 180,
                                height: 90,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 54,
                                          height: 67,
                                          decoration: BoxDecoration(
                                              color: Colors.red[400],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            weight: 100,
                                            size: 26,
                                          ),
                                        ),
                                        Text(
                                        "HIV STATUS",
                                        style: poppins.copyWith(
                                          fontSize: 7,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(2),
                                          alignment: Alignment.center,
                                          width: 60,
                                          height: 67,
                                          decoration: BoxDecoration(
                                              color: Colors.green[400],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            "100 %",
                                            style: poppins.copyWith(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                        "KETAATAN ARV",
                                        style: poppins.copyWith(
                                          fontSize: 7,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 58,
                                          height: 67,
                                          decoration: BoxDecoration(
                                              color: Colors.green[400],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "< 40",
                                                style: poppins.copyWith(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Text(
                                                "copies/mL",
                                                style: poppins.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 6),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                        "VIRAL LOAD",
                                        style: poppins.copyWith(
                                          fontSize: 7,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 200, top: 5),
                                width: 100,
                                height: 115,
                                child: BarChart(
                                  BarChartData(
                                    gridData: FlGridData(show: false),
                                    titlesData: FlTitlesData(show: false),
                                    borderData: FlBorderData(show: false),
                                    barGroups: [
                                      BarChartGroupData(
                                        x: 3,
                                        barRods: [
                                          BarChartRodData(
                                            color: Colors.blue,
                                            toY: 5,
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 3,
                                        barRods: [
                                          BarChartRodData(
                                            color: Colors.blue,
                                            toY: 12,
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            color: Colors.blue,
                                            toY: 2,
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            color: Colors.blue,
                                            toY: 3,
                                          ),
                                        ],
                                      ),
                                    ],
                                    barTouchData: BarTouchData(
                                      touchTooltipData: BarTouchTooltipData(
                                        tooltipBgColor: Colors.grey[100],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 190, top: 5),
                                width: 140,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "UNDETECTED",
                                  style: poppins.copyWith(
                                      fontSize: 10,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          )
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

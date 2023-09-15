import 'package:flutter/material.dart';
import 'package:posithiva/pages/caridoctor/ArvPage.dart';
import 'package:posithiva/pages/caridoctor/CariDoctor.dart';
import 'package:posithiva/pages/kalenderberobat/KalenderBerobat.dart';
import 'package:posithiva/pages/obatku/ObatKuPage.dart';
import 'package:posithiva/pages/riwayatkonsul/RiwayatKonsultasi.dart';
import 'package:posithiva/pages/ruangberdaya/RuangBerdaya.dart';
import 'package:posithiva/theme.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
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
                        borderRadius: BorderRadius.circular(10),
                        color: birutua),
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const CariDoctor();
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ArvPage();
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const RiwayatKonsultasi();
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const KalenderBerobat();
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
                     Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const RuangBerdaya();
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
                      "Ruang Berdaya",
                      style: lato.copyWith(
                          color: const Color.fromARGB(255, 46, 42, 42),
                          fontStyle: FontStyle.italic,
                          fontSize: 22),
                    ),
                  ),
                ),
                // Tambahkan item-menu atau widget lainnya di sini
              ],
            ),
          ),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/pages/caridoctor/ArvPage.dart';
import 'package:posithiva/pages/caridoctor/CariDoctor.dart';
import 'package:posithiva/pages/doctor/Jadwalku.dart';
import 'package:posithiva/pages/doctor/RiwayatKonsultasi.dart';
import 'package:posithiva/pages/doctor/pasienku/PasienkuPage.dart';
import 'package:posithiva/pages/doctor/praktekku/Praktekku.dart';
import 'package:posithiva/pages/kalenderberobat/KalenderBerobat.dart';
import 'package:posithiva/pages/obatku/ObatKuPage.dart';
import 'package:posithiva/pages/riwayatkonsul/RiwayatKonsultasi.dart';
import 'package:posithiva/pages/ruangberdaya/RuangBerdaya.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
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
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
          backgroundColor: biruabu,
          width: width - width * 0.5 + 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
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
                  margin: const EdgeInsets.only(top: 20),
                  height: 100,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Column(
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
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Image.asset(
                          "assets/images/avatar.png",
                          scale: 0.5,
                        ),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
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
                      style: latoItalic.copyWith(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 300,
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
        );
  }
}

class DrawerNakes extends StatelessWidget {
  const DrawerNakes({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return Drawer(
        backgroundColor: biruabu,
        width: width - width * 0.5 + 30,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 20),
          child: ListView(
            children: [
             Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const PasienkuPage();
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
                    color: birutua
                  ),
                  child: Text("Pasienku", style: latoItalic.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const JadwalkuPage();
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
                    color: birutua
                  ),
                  child: Text("Jadwalku", style: latoItalic.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const PraktekkuPage();
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
                    color: birutua
                  ),
                  child: Text("Praktekku", style: latoItalic.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const RiwayatKonsultasiPage();
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
                    color: birutua
                  ),
                  child: Text("Layanan Kirim Obat Pasien", style: latoItalic.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 25),),
                ),
              ),
              // Tambahkan item-menu atau widget lainnya di sini
            ],
          ),
        ),
      );
  }
}

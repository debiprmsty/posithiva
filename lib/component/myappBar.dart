import 'dart:convert';

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
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;




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

class EndDrawer extends StatefulWidget {
  const EndDrawer({super.key});

  @override
  State<EndDrawer> createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  String namaLengkap ='';
  String bpjs = '';
  String imageProfile = '';

  Future<String?> _getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  Future<void> fetchData() async {
    final token = await _getToken();
    if(token != null) {
      final url = "https://apigapro.000webhostapp.com/api/me";
      final response = await http.get(Uri.parse(url),headers: {'Authorization': 'Bearer $token'},);

      if (response.statusCode == 200) {
          final data = json.decode(response.body);
          setState(() {
            namaLengkap = data['name'];
            bpjs = data['no_bpjs'];

            if(data['image'] != '') {
              imageProfile = data['image'];
            }
          });
      }else {
        print('Gagal mengambil data dari API');
      }
    }
  }

  Future<void> logout() async {
    final token = await _getToken();
    if(token != null) {
      final url = "https://apigapro.000webhostapp.com/api/logout";
      final response = await http.get(Uri.parse(url),headers: {'Authorization': 'Bearer $token'},);

      if(response.statusCode == 200) {
        final data = json.decode(response.body);
        print(data);

      }else {
        print('Gagal logout');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Panggil fetchData saat initState
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    if (namaLengkap.contains(' ')) {
      List<String> namaSplit = namaLengkap.split(' ');
      namaLengkap = namaSplit.join('\n');
    }
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
                            RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  style: poppins.copyWith(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: namaLengkap,
                                    ),
                                  ],
                                ),
                              ),
                            Text(
                              "BPJS. ${bpjs}",
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
                        child: imageProfile == '' ? Image.asset(
                                            "assets/images/avatar.png",
                                            scale: 0.6,
                                            fit: BoxFit.cover,
                                          ) : Image.network("https://apigapro.000webhostapp.com/api/image/$imageProfile", scale: 0.35,
                                            fit: BoxFit.cover,)
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
                  height: 220,
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const LoginPage();
                        // }));

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                              
                                title: Text('Keluar dari Akun ini ?',textAlign: TextAlign.center,style: lato.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                                backgroundColor: Color.fromARGB(255, 223, 135, 4),
                                actionsAlignment: MainAxisAlignment.spaceEvenly,
                                actions: [
                                  ElevatedButton(style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(birutua)
                                  ), onPressed: ()async{
                                    await logout();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('Anda berhasil logout !'),
                                        duration: Duration(seconds: 2), // Durasi notifikasi
                                      ),
                                    );
                                     Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => LoginPage()),
                                      );
                                  }, child: Text("iya",style: poppins.copyWith(fontSize: 14),)),
                                  ElevatedButton(style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(birutua)
                                  ), onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: Text("tidak",style: poppins.copyWith(fontSize: 14),)),
                                ],
                              );
                            },
                          );
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

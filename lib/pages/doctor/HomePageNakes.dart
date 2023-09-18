import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/doctor/Jadwalku.dart';
import 'package:posithiva/pages/doctor/LoginPageDoctor.dart';
import 'package:posithiva/pages/doctor/RiwayatKonsultasi.dart';
import 'package:posithiva/pages/doctor/pasienku/DetailPasien.dart';
import 'package:posithiva/pages/doctor/pasienku/PasienkuPage.dart';
import 'package:posithiva/pages/doctor/praktekku/Praktekku.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
import 'package:posithiva/theme.dart';

class HomePageNakes extends StatefulWidget {
  const HomePageNakes({super.key});

  @override
  State<HomePageNakes> createState() => _HomePageNakesState();
}

class _HomePageNakesState extends State<HomePageNakes> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Lokasi Terkini",style: poppins.copyWith(color: Colors.grey,fontSize: 14),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.blue, size: 18, ),
                const SizedBox(
                  width: 3,
                ),
                Text("Singaraja",style: poppins.copyWith(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
              ],
            )
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
      drawer: DrawerNakes(),
      endDrawer: EndDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            width: 360,
            height: height * 1.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Selamat Pagi...", style: poppins.copyWith(fontSize: 15, color: Colors.black, fontStyle: FontStyle.italic),),
                Text("dr. Andreana", style: poppins.copyWith(fontSize: 35, color: Colors.black,),),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: 47,
                  decoration: BoxDecoration(
                    color: birutua,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Text("OVERVIEW JANJI KONSULTASI PASIEN", style: poppins.copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 115,
                            height: 150,
                            decoration: BoxDecoration(
                              color: birumuda2,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: birutua,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Pasien Hari Ini", style: lato.copyWith(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w100), textAlign: TextAlign.center,)),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Text("5", style: lato.copyWith(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                Text("Orang", style: lato.copyWith(fontSize: 15, color: Colors.white), textAlign: TextAlign.center,)
                              ],
                            )
                          ),
                          Positioned(
                            top: 128,
                            left: 8,
                            right: 8,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const HomePageNakes();
                                }));
                              },
                              child: Container(
                                width: 120,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: birutua,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Text("CEK DETAIL PASIEN", style: poppins.copyWith(fontSize: 10, color: Colors.white, fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                              ),
                            )
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 111,
                            height: 150,
                            decoration: BoxDecoration(
                              color: birumuda3,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: birumuda2,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Pasien Besok", style: lato.copyWith(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w100), textAlign: TextAlign.center,)),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Text("3", style: lato.copyWith(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                Text("Orang", style: lato.copyWith(fontSize: 15, color: Colors.white), textAlign: TextAlign.center,)
                              ],
                            )
                          ),
                          Positioned(
                            top: 128,
                            left: 8,
                            right: 8,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const HomePageNakes();
                                }));
                              },
                              child: Container(
                                width: 135,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: birutua,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Text("CEK DETAIL PASIEN", style: poppins.copyWith(fontSize: 10, color: Colors.white, fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                              ),
                            )
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 124,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: birutua,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Pasien Minggu Ini", style: lato.copyWith(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w100), textAlign: TextAlign.center,)),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Text("5", style: lato.copyWith(fontSize: 60, color: birutua, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                Text("Orang", style: lato.copyWith(fontSize: 15, color: birutua), textAlign: TextAlign.center,)
                              ],
                            )
                          ),
                          Positioned(
                            top: 128,
                            left: 8,
                            right: 8,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return const HomePageNakes();
                                }));
                              },
                              child: Container(
                                width: 120,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: birutua,
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Text("CEK DETAIL PASIEN", style: poppins.copyWith(fontSize: 10, color: Colors.white, fontStyle: FontStyle.italic,), textAlign: TextAlign.center,),
                              ),
                            )
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: birutua,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Text("OVERVIEW PASIEN ANDA", style: poppins.copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset(
                            "assets/images/avatar.png",
                            scale: 0.4,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Mario Mariono", style: lato.copyWith(fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),),
                                    Text("28 Tahun | Tenofovir Lamivudine Dolutegravir", style: lato.copyWith(fontSize: 11, color: Colors.black),),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF518C70),
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("ADHERENCE 100%", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF26395A),
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("UNDETECTED", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return const DetailPasienPage();
                                  }));
                                },
                                child: Center(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 226,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: birutua,
                                      borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Text("LIHAT DETAIL RIWAYAT PASIEN", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset(
                            "assets/images/avatar.png",
                            scale: 0.4,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Hario Harjono", style: lato.copyWith(fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),),
                                    Text("35 Tahun | Tenofovir Lamivudine Dolutegravir", style: lato.copyWith(fontSize: 11, color: Colors.black),),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow[600],
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("ADHERENCE 60%", style: poppins.copyWith(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: birumuda,
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("SUPPRESED", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return const DetailPasienPage();
                                  }));
                                },
                                child: Center(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 226,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: birutua,
                                      borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Text("LIHAT DETAIL RIWAYAT PASIEN", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Image.asset(
                            "assets/images/avatar.png",
                            scale: 0.4,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Suciwati", style: lato.copyWith(fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),),
                                    Text("28 Tahun | Tenofovir Lamivudine Efavirenz", style: lato.copyWith(fontSize: 11, color: Colors.black),),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 120,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.red[700],
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("ADHERENCE 10%", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 100,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.orange[800],
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("DETECTED", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return const DetailPasienPage();
                                  }));
                                },
                                child: Center(
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 226,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: birutua,
                                      borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Text("LIHAT DETAIL RIWAYAT PASIEN", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: width,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange[700]),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const HomePageNakes();
                      }));
                    },
                    child: Text('LIHAT LEBIH BANYAK', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),)
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
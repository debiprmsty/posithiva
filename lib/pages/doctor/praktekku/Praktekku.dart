import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/doctor/praktekku/PraktekkuUpdate.dart';
import 'package:posithiva/theme.dart';

class PraktekkuPage extends StatefulWidget {
  const PraktekkuPage({super.key});

  @override
  State<PraktekkuPage> createState() => _PraktekkuPageState();
}

class _PraktekkuPageState extends State<PraktekkuPage> {
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
                  child: Image.asset("assets/images/profile.png", width: 30, height: 30));
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
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            width: 360,
            height: height,
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
                  height: 10,
                ),
                Text("Praktekku", style: poppins.copyWith(fontSize: 35, color: birutua),),
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
                                  return const PraktekkuPage();
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
                                  return const PraktekkuPage();
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
                                  return const PraktekkuPage();
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
                  height: 18,
                ),
                Text("Pasien Hari Ini", style: poppins.copyWith(fontSize: 25, color: Colors.black),),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: width,
                  height: 380,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        alignment: Alignment.topCenter,
                        width: width,
                        height: 133,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Image.asset(
                                      "assets/images/avatar.png",
                                      scale: 0.5,
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
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Mario Mariono", style: lato.copyWith(fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),),
                                              RichText(
                                                text: TextSpan(
                                                  style: lato.copyWith(fontSize: 11.5, color: Colors.black),
                                                  children: [
                                                    TextSpan(
                                                      text: "28 Tahun | TLD | ",
                                                    ),
                                                    TextSpan(
                                                      text: "START ARV 31 OKTOBER 2022",
                                                      style: lato.copyWith(fontSize: 11.5, color: Colors.black, fontWeight: FontWeight.bold)
                                                    )
                                                  ]
                                                )
                                              )
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
                                                width: 127,
                                                height: 27,
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
                                                width: 120,
                                                height: 27,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF26395A),
                                                  borderRadius: BorderRadius.circular(3)
                                                ),
                                                child: Text("UNDETECTED", style: poppins.copyWith(fontSize: 13, color: Colors.white),),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return const PraktekkuUpdatePage();
                                        }));
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 162,
                                        height: 27,
                                        decoration: BoxDecoration(
                                          color: Colors.orange[700],
                                          borderRadius: BorderRadius.circular(3)
                                        ),
                                        child: Text("BUKA CATATAN OBAT", style: poppins.copyWith(fontSize: 14.5, color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 176,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: birutua,
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Text("TAMBAH REKAM MEDIS", style: poppins.copyWith(fontSize: 14.5, color: Colors.white),),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
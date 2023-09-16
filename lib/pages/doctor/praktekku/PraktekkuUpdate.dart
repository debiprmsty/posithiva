import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/doctor/praktekku/Praktekku.dart';
import 'package:posithiva/theme.dart';

class PraktekkuUpdatePage extends StatefulWidget {
  const PraktekkuUpdatePage({super.key});

  @override
  State<PraktekkuUpdatePage> createState() => _PraktekkuUpdatePageState();
}

class _PraktekkuUpdatePageState extends State<PraktekkuUpdatePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaObatController = TextEditingController();
  TextEditingController _tipeObatController = TextEditingController();
  TextEditingController _jumlahObatController = TextEditingController();
  TextEditingController _kedaluwarsaObatController = TextEditingController();

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
            height: height * 1.15,
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
                  height: 8,
                ),
                Text("Update Obat Pasien", style: poppins.copyWith(fontSize: 35, color: birutua),),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.topCenter,
                  width: width,
                  height: 96,
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
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 88,
                      height: 132,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Text("TANGGAL AMBIL OBAT \n YANG LALU", style: poppins.copyWith(fontSize: 7.5, color: Colors.black), textAlign: TextAlign.center,)),
                            Center(child: Text("4", style: poppins.copyWith(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold),)),
                            Center(child: Text("Juli 2023", style: poppins.copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 95,
                      height: 132,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Text("SISA OBAT SAAT\nPENGAMBILAN YANG LALU", style: poppins.copyWith(fontSize: 7.5, color: Colors.black), textAlign: TextAlign.center,)),
                            Center(child: Text("0", style: poppins.copyWith(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold),)),
                            Center(child: Text("Butir", style: poppins.copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 88,
                      height: 132,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Text("TANGGAL OBAT\nKESELURUHAN HABIS ", style: poppins.copyWith(fontSize: 7.5, color: Colors.black), textAlign: TextAlign.center,)),
                            Center(child: Text("8", style: poppins.copyWith(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold),)),
                            Center(child: Text("Agustus 2023", style: poppins.copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 74,
                      height: 132,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Text("SISA OBAT\nSAAT INI", style: poppins.copyWith(fontSize: 7.5, color: Colors.black), textAlign: TextAlign.center,)),
                            Center(child: Text("21", style: poppins.copyWith(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold),)),
                            Center(child: Text("Butir", style: poppins.copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Tambah Obat Pasien", style: poppins.copyWith(fontSize: 20, color: Colors.black),),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: width,
                  height: 59,
                  child: TextFormField(
                    style: lato.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    controller: _namaObatController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Nama Obat',
                      labelStyle: poppins.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                      fillColor: Colors.grey[300],
                      filled: true,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide.none
                      ),
                      floatingLabelStyle: poppins.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 59,
                  child: TextFormField(
                    style: lato.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    controller: _tipeObatController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Tipe Obat',
                      labelStyle: poppins.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                      fillColor: Colors.grey[300],
                      filled: true,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide.none
                      ),
                      floatingLabelStyle: poppins.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 59,
                  child: TextFormField(
                    style: lato.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    controller: _jumlahObatController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Jumlah Obat',
                      labelStyle: poppins.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                      fillColor: Colors.grey[300],
                      filled: true,
                      suffixText: "butir",
                      suffixStyle: lato.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide.none
                      ),
                      floatingLabelStyle: poppins.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  height: 59,
                  child: TextFormField(
                    style: lato.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    controller: _kedaluwarsaObatController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: 'Kedaluwarsa Obat',
                      labelStyle: poppins.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal),
                      fillColor: Colors.grey[300],
                      filled: true,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide.none
                      ),
                      floatingLabelStyle: poppins.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
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
                      backgroundColor: MaterialStatePropertyAll(Color(0xFF518C70)),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const PraktekkuPage();
                      }));
                    },
                    child: Text('UPDATE JUMLAH OBAT PASIEN', style: lato.copyWith(color: Colors.white, fontSize: 20),)
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text("Riwayat Regimen Obat Pasien", style: poppins.copyWith(fontSize: 24, color: Colors.black),),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
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
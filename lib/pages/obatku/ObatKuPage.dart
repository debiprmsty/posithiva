import 'package:flutter/material.dart';
import 'package:posithiva/pages/doctor/LoginPageDoctor.dart';
import 'package:posithiva/pages/obatku/NomorAntrian.dart';
import 'package:posithiva/pages/obatku/ObatSaya.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
import 'package:posithiva/theme.dart';

class ObatkuPage extends StatefulWidget {
  const ObatkuPage({super.key});

  @override
  State<ObatkuPage> createState() => _ObatkuPageState();
}

class _ObatkuPageState extends State<ObatkuPage> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Lokasi Terkini",
              style: poppins.copyWith(color: Colors.grey, fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                  size: 15,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "Singaraja",
                  style: poppins.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ],
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
                          "Andreana \nSusilo",
                          textAlign: TextAlign.left,
                          style: poppins.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "STR 1729263",
                          style: poppins.copyWith(
                              color: Colors.black, fontSize: 10),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                      borderRadius: BorderRadius.circular(10), color: birutua),
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
                      borderRadius: BorderRadius.circular(10), color: birutua),
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
                      borderRadius: BorderRadius.circular(10), color: birutua),
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
                        return const LoginPageDoctor();
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120,
              child: ElevatedButton(
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
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Obatku",
              style: poppins.copyWith(
                  fontSize: 25, color: birutua, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Taily Counter ARV-ku",
                style: poppins.copyWith(fontSize: 16, color: Colors.black),
              ),
              Icon(
                Icons.info,
                color: birutua,
                size: 20,
              ),
            ]),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(
                  width: width,
                  height: 120,
                  decoration: BoxDecoration(
                      color: biruabu, borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  top: 8,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: Text(
                          "QR ARV",
                          style: poppins.copyWith(fontSize: 15,color: birutua,fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 7),
                        child: Image.asset("assets/images/qr.png",scale: 0.7,)
                      )
                    ],  
                  ),
                ),
                Positioned(
                  top: 17,
                  left: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                          color: abu,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('JENIS ARV',style: poppins.copyWith(fontSize: 5,fontStyle: FontStyle.italic),),
                            Row(
                              children: [
                                Text("TLD",style: lato.copyWith(fontSize: 11,color: birutua,fontWeight: FontWeight.bold,),),
                                const SizedBox(width: 5,),
                                Text("TENOVOFIR LAMIVUDINE \n DOLUTEGRAVIR",style: lato.copyWith(fontSize: 5,color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            width:46,
                            height: 22,
                            decoration: BoxDecoration(
                              color: abu,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text('TANGGAL EXPIRED ARV',style: poppins.copyWith(fontSize: 3.5,fontStyle: FontStyle.italic),),
                                 Text("AUG 2023",style: lato.copyWith(fontSize: 8,color: birutua,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            width: 46,
                            height: 22,
                            decoration: BoxDecoration(
                              color: abu,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text('sEDIAAN ARV',style: poppins.copyWith(fontSize: 3.5,fontStyle: FontStyle.italic),),
                                 Text("SATUAN",style: lato.copyWith(fontSize: 8,color: birutua,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                            height: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                          color: abu,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text('LOKASI PENGAMBILAN ARV',style: poppins.copyWith(fontSize: 5,fontStyle: FontStyle.italic),),
                                 Text("PUSKESMAS BULELENG 1",style: lato.copyWith(fontSize: 8,color: birutua,fontWeight: FontWeight.bold),)
                              ],
                            ),
                      ),
                    ],
                  )
                ),
                Positioned(
                  top: 17,
                  left: 246,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: 50,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: birutua
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("JUMLAH",style: lato.copyWith(fontSize: 9,color: Colors.white,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                        Text("OBAT SISA", style:lato.copyWith(fontSize: 6,color: Colors.white,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                        Text("21",style: poppins.copyWith(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("BUTIR",style: lato.copyWith(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 17,
                  left: 192,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: 50,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: birumuda3
                    ),
                    child : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("JUMLAH",style: lato.copyWith(fontSize: 9,color: birutua,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                        Text("OBAT SISA", style:lato.copyWith(fontSize: 6,color: birutua,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                        Text("30",style: poppins.copyWith(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("BUTIR",style: lato.copyWith(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  )
                ),
                Positioned(
                  top: 17,
                  left: 300,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    width: 55,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orange[500]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("KLIK DISINI",style: lato.copyWith(fontSize: 9,color: Colors.white,fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(40/2)
                          ),
                          child: Icon(Icons.check,color: Colors.white,weight: 9),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text("JIKA ANDA SUDAH KONSUMSI OBAT HARI INI",style: lato.copyWith(fontSize: 5,color: Colors.white),textAlign: TextAlign.center,)
                      ],
                    ),
                  )
                )
              ],
            ),
            const SizedBox(height: 20),
            Text("Sistem Antrean Ambil Obat [ON-SITE]",
                style: poppins.copyWith(fontSize: 16, color: Colors.black)),
            const SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                  width: width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: biruabu, borderRadius: BorderRadius.circular(10))),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  alignment: Alignment.center,
                  width: 400,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  height: 45,
                  color: Colors.white,
                  child: Column(children: [
                    Text('FASILITAS KESEHATAN PENGAMBILAN OBAT',
                        style: poppins.copyWith(
                            fontSize: 8, fontStyle: FontStyle.italic)),
                    Text('PUSKESMAS BULELENG 1',
                        style: poppins.copyWith(fontSize: 15, color: birutua))
                  ])),
              Container(
                  margin: const EdgeInsets.only(top: 60, right: 8, left: 8),
                  width: 400,
                  height: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: birumuda2,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Text('AMBIL PENGAMBILAN OBAT TERSISA',
                      style:
                          poppins.copyWith(fontSize: 15, color: Colors.white))),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const NomorAntrian();
                  }));
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 135, right: 8, left: 8),
                    padding: EdgeInsets.symmetric(vertical: 4),
                    alignment: Alignment.center,
                    width: 400,
                    height: 45,
                    color: birutua,
                    child: Center(
                      child: Text('AMBIL NOMOR ANTRIAN',
                          style: poppins.copyWith(
                              fontSize: 15, color: Colors.white)),
                    )),
              ),
            ]),
            const SizedBox(height: 20),
            Text("Kirim Obat [ON-LINE]",
                style: poppins.copyWith(fontSize: 16, color: Colors.black)),
            const SizedBox(
              height: 8,
            ),
            Stack(children: [
              Container(
                  width: width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: biruabu, borderRadius: BorderRadius.circular(10))),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  alignment: Alignment.center,
                  width: 400,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  height: 45,
                  color: Colors.white,
                  child: Column(children: [
                    Text('FASILITAS KESEHATAN PENGAMBILAN OBAT',
                        style: poppins.copyWith(
                            fontSize: 8, fontStyle: FontStyle.italic)),
                    Text('PUSKESMAS BULELENG 1',
                        style: poppins.copyWith(fontSize: 15, color: birutua))
                  ])),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 60, right: 8, left: 8),
                      width: 160,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: birumuda3,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          Text(
                            'KURIR \n REGULER',
                            style: poppins.copyWith(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text('EST.3-5 HARI KERJA',
                              style: poppins.copyWith(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100)),
                        ],
                      )),
                  const SizedBox(width: 3),
                  Container(
                      margin: const EdgeInsets.only(top: 60, right: 8, left: 8),
                      width: 160,
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: birumuda3,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          Text(
                            'KURIR \n INSTAN',
                            style: poppins.copyWith(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text('EST.1-2 JAM KERJA',
                              style: poppins.copyWith(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100)),
                        ],
                      )),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const ObatSaya();
                  }));
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 146, right: 8, left: 8),
                    padding: EdgeInsets.symmetric(vertical: 4),
                    alignment: Alignment.center,
                    width: 400,
                    height: 45,
                    color: birutua,
                    child: Center(
                      child: Text('KIRIM OBAT SAYA',
                          style: poppins.copyWith(
                              fontSize: 15, color: Colors.white)),
                    )),
              ),
            ]),
          ],
        ),
      )),
    );
  }
}

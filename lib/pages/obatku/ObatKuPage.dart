import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/kurir/KurirInstan.dart';
import 'package:posithiva/pages/kurir/KurirReguler.dart';
import 'package:posithiva/pages/obatku/NomorAntrian.dart';
import 'package:posithiva/pages/obatku/ObatSaya.dart';
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
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.white,
            width: 360,
            height: height * 1.05,
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
                const SizedBox(height: 15),
                Text(
                  "Obatku",
                  style: lato.copyWith(
                      fontSize: 30, color: birutua, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Text(
                    "Tally Counter ARV-ku",
                    style: lato.copyWith(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: birutua,
                      borderRadius: BorderRadius.circular(25/2)
                    ),
                    child: Text("i", style: loraItalic.copyWith(fontSize: 18, color: Colors.white),),
                  ),
                ]),
                const SizedBox(height: 12),
                Stack(
                  children: [
                    Container(
                      width: width,
                      height: 112,
                      decoration: BoxDecoration(
                          color: biruabu, borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 8,
                      left: -6,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                              child: Text(
                                "QR ARV",
                                style: poppins.copyWith(fontSize: 15,color: birutua,fontWeight: FontWeight.w600),
                              ),
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
                      top: 14,
                      left: 78,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            width: 106,
                            height: 27,
                            decoration: BoxDecoration(
                              color: abu,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 2),
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
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2),
                                width: 51,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: abu,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3, top: 1.5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text('TANGGAL EXPIRED ARV',style: poppins.copyWith(fontSize: 3.5,fontStyle: FontStyle.italic),),
                                        Text("AUG 2023",style: lato.copyWith(fontSize: 8,color: birutua,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                width: 51,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: abu,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3, top: 1.5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text('SEDIAAN ARV',style: poppins.copyWith(fontSize: 3.5,fontStyle: FontStyle.italic),),
                                        Text("SATUAN",style: lato.copyWith(fontSize: 8,color: birutua,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                                height: 4,
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            width: 106,
                            height: 27,
                            decoration: BoxDecoration(
                              color: abu,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3, top: 1.7),
                              child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text('LOKASI PENGAMBILAN ARV',style: poppins.copyWith(fontSize: 5,fontStyle: FontStyle.italic),),
                                        Text("PUSKESMAS BULELENG 1",style: lato.copyWith(fontSize: 8,color: birutua,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                            ),
                          ),
                        ],
                      )
                    ),
                    Positioned(
                      top: 14,
                      left: 244,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        width: 50,
                        height: 85,
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
                      top: 14,
                      left: 190,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        width: 50,
                        height: 85,
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
                      top: 14,
                      left: 298,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        width: 55,
                        height: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.orange[500]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("KLIK DISINI",style: lato.copyWith(fontSize: 9,color: Colors.white,fontWeight: FontWeight.bold),),
                            const SizedBox(
                              height: 4,
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
                              height: 4,
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
                    style: lato.copyWith(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 8,
                ),
                Stack(children: [
                  Container(
                      width: width,
                      height: 230,
                      decoration: BoxDecoration(
                          color: biruabu, borderRadius: BorderRadius.circular(10))),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      alignment: Alignment.center,
                      width: 400,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Column(children: [
                          Text('FASILITAS KESEHATAN PENGAMBILAN OBAT',
                              style: lato.copyWith(
                                  fontSize: 10, fontStyle: FontStyle.italic)),
                          Text('PUSKESMAS BULELENG I',
                              style: lato.copyWith(fontSize: 18, color: birutua))
                        ]),
                      )),
                  Container(
                      margin: const EdgeInsets.only(top: 60, right: 8, left: 8),
                      width: 400,
                      height: 111,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: birumuda2,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Text('ANTREAN PENGAMBILAN\nOBAT TERSISA',
                          style:
                              lato.copyWith(fontSize: 22, color: Colors.white), textAlign: TextAlign.center,)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const NomorAntrian();
                      }));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 177, right: 8, left: 8),
                        padding: EdgeInsets.symmetric(vertical: 4),
                        alignment: Alignment.center,
                        width: 400,
                        height: 45,
                        decoration: BoxDecoration(
                          color: birutua,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text('AMBIL NOMOR ANTREAN',
                              style: lato.copyWith(
                                  fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                        )),
                  ),
                ]),
                const SizedBox(height: 20),
                Text("Kirim Obat [ON-LINE]",
                    style: lato.copyWith(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 8,
                ),
                Stack(children: [
                  Container(
                      width: width,
                      height: 245,
                      decoration: BoxDecoration(
                          color: biruabu, borderRadius: BorderRadius.circular(10))),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      alignment: Alignment.center,
                      width: 400,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Column(children: [
                          Text('FASILITAS KESEHATAN PENYEDIA OBAT',
                              style: lato.copyWith(
                                  fontSize: 10, fontStyle: FontStyle.italic)),
                          Text('PUSKESMAS BULELENG I',
                              style: lato.copyWith(fontSize: 18, color: birutua))
                        ]),
                      )),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const KurirReguler();
                          }));
                        },
                        child: Container(
                            margin: const EdgeInsets.only(top: 60, left: 8),
                            width: 167.7,
                            height: 125,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: birumuda3,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'KURIR \n REGULER',
                                    style: lato.copyWith(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        shadows: [Shadow(
                                          offset: Offset(3.0, 3.0), 
                                          blurRadius: 5.0, 
                                          color: Colors.black.withOpacity(0.5), 
                                        )]),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9),
                                    child: Text('EST. 3-5 HARI KERJA',
                                        style: lato.copyWith(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100),
                                            textAlign: TextAlign.center,),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const KurirInstant();
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 60, left: 8),
                          width: 167.7,
                          height: 125,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: birumuda3,
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'KURIR \n INSTAN',
                                  style: lato.copyWith(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      shadows: [Shadow(
                                        offset: Offset(3.0, 3.0), 
                                        blurRadius: 5.0, 
                                        color: Colors.black.withOpacity(0.5), 
                                      )]),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 9),
                                  child: Text('EST. 1-2 JAM KERJA',
                                      style: lato.copyWith(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w100),
                                          textAlign: TextAlign.center,),
                                ),
                              ],
                            ),
                          )),
                      ),
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
                        margin: const EdgeInsets.only(top: 192, right: 8, left: 8),
                        padding: EdgeInsets.symmetric(vertical: 4),
                        alignment: Alignment.center,
                        width: 400,
                        height: 45,
                        decoration: BoxDecoration(
                          color: birutua,
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: Center(
                          child: Text('KIRIM OBAT SAYA',
                              style: lato.copyWith(
                                  fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                        )),
                  ),
                ]),
              ],
            ),
          ),
        )
      ),
    );
  }
}

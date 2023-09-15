import 'package:flutter/material.dart';
import 'package:posithiva/pages/doctor/LoginPageDoctor.dart';
import 'package:posithiva/pages/doctor/pasienku/PasienkuPage.dart';
import 'package:posithiva/pages/doctor/pasienku/RekamMedis.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
import 'package:posithiva/theme.dart';

class DetailPasienPage extends StatefulWidget {
  const DetailPasienPage({super.key});

  @override
  State<DetailPasienPage> createState() => _DetailPasienPageState();
}

class _DetailPasienPageState extends State<DetailPasienPage> {
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
      drawer: Drawer(
        backgroundColor: biruabu,
        width: width - width * 0.5 + 30,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: ListView(
            children: [
             Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Row(
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
                  child: Text("Pasienku", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
                    color: birutua
                  ),
                  child: Text("Jadwalku", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
                    color: birutua
                  ),
                  child: Text("Praktekku", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
                    color: birutua
                  ),
                  child: Text("Layanan Kirim Obat Pasien", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: ListView(
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
              Container(
                width: 193,
                margin: const EdgeInsets.only(top: 30),
                height: 100,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Selamat Malam!", style: poppins.copyWith(color: Colors.black, fontSize: 10),),
                        Text("Andreana \nSusilo", textAlign: TextAlign.left, style: poppins.copyWith(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                        Text("STR 1729263", style: poppins.copyWith(color: Colors.black, fontSize: 10),)
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
                        image: DecorationImage(image: AssetImage("assets/images/avatar.png",),fit: BoxFit.cover)
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
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
                    color: birutua
                  ),
                  child: Text("Profile User", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
                    color: birutua
                  ),
                  child: Text("Settings", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
                    color: birutua
                  ),
                  child: Text("Tentang POSITHIVA", style: lato.copyWith(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 22),),
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
                    backgroundColor: MaterialStatePropertyAll(Colors.red[500]),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const LoginPageDoctor();
                    }));
                  },
                  child: Text('LOG OUT', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),)
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
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            width: 360,
            height: height * 1.3,
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
                Text("Detail Pasien", style: poppins.copyWith(fontSize: 35, color: birutua),),
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.topCenter,
                  width: width,
                  height: 88,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/avatar_grey.png",
                            scale: 0.7,
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
                                        width: 140,
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
                Text("Identitas Dasar Pasien", style: lato.copyWith(fontSize: 25, color: birutua, fontWeight: FontWeight.w600),),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Nama Lengkap", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Mario Mariono", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("TTL", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Yogyakarta, 11 November 1995", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Profesi", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Wiraswasta", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Nomor BPJS", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("117294 16381 123", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Penyakit Lain", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("-", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Riwayat Alergi", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Cefadroxil", style: lato.copyWith(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Status Perkawinan", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Kawin", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 135,
                        color: Colors.grey[400],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Riwayat Seksual", style: lato.copyWith(fontSize: 15, color: birutua),),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        width: 225,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("Jarang", style: lato.copyWith(fontSize: 15, color: Colors.black),),
                        ), 
                      )
                    ],
                  ),
                ),
                Text("Data Viral Load", style: lato.copyWith(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600)),
                Container(
                  width: width,
                  height: 150,
                  child: Table(
                    border: TableBorder.all(color: Colors.white30),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.red[200]
                        ),
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("TANGGAL",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              color: Colors.red[300],
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("JUMLAH VIRAL COPY",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("FILE HASIL",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ]
                      ),
                      ...List.generate(4, (index) => TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[400],
                              padding: const EdgeInsets.all(8),
                              child: Text("1 Feb 2023",style: lato.copyWith(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[300],
                              padding: const EdgeInsets.all(8),
                              child: Text("< 40 Copies/mL",style: lato.copyWith(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[400],
                              padding: const EdgeInsets.all(8),
                              child: Text("",style: lato.copyWith(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ]
                      ))
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: 25,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color(0xFFFDD4D4)),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const DetailPasienPage();
                        }));
                      },
                      child: Text('LIHAT LEBIH BANYAK DATA VL', style: lato.copyWith(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)
                    ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Data CD4", style: lato.copyWith(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600)),
                Container(
                  width: width,
                  height: 150,
                  child: Table(
                    border: TableBorder.all(color: Colors.white30),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.red[200]
                        ),
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("TANGGAL",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              color: Colors.red[300],
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("JUMLAH COPY CD4",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("FILE HASIL",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ]
                      ),
                      ...List.generate(4, (index) => TableRow(
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[400],
                              padding: const EdgeInsets.all(8),
                              child: Text("14 Mei 2023",style: lato.copyWith(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[300],
                              padding: const EdgeInsets.all(8),
                              child: Text("764 Copies/mm^3",style: lato.copyWith(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[400],
                              padding: const EdgeInsets.all(8),
                              child: Text("",style: lato.copyWith(fontSize: 10,color: Colors.blue,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ]
                      ))
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: 25,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xFFFDD4D4)),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const DetailPasienPage();
                      }));
                    },
                    child: Text('LIHAT LEBIH BANYAK DATA CD4', style: lato.copyWith(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),)
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
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const RekamMedisPage();
                      }));
                    },
                    child: Text('LIHAT REKAM MEDIS PASIEN', style: lato.copyWith(color: Colors.white, fontSize: 20),)
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
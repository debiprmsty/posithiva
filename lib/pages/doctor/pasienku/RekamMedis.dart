import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/theme.dart';

class RekamMedisPage extends StatefulWidget {
  const RekamMedisPage({super.key});

  @override
  State<RekamMedisPage> createState() => _RekamMedisPageState();
}

class _RekamMedisPageState extends State<RekamMedisPage> {
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
            padding: const EdgeInsets.symmetric(vertical: 8),
            margin: EdgeInsets.only(top: 10),
            color: Colors.white,
            width: 360,
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
                Text("Riwayat Konsultasi Pasien", style: lato.copyWith(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: width,
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
                              child: Text("DETAIL KUNJUNGAN",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8),
                              child: Text("RM & SISA OBAT",style: lato.copyWith(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ]
                      ),
                      ...List.generate(50, (index) => TableRow(
                        decoration: BoxDecoration(),
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[400],
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("OFFLINE",style: lato.copyWith(fontWeight: FontWeight.bold,fontSize: 15),),
                                  Text("Selasa,14 Mei 2023",style: lato.copyWith(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w100),),
                                ],
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.grey[300],
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Anamnesis",style: lato.copyWith(fontSize: 6,color: Colors.black,fontWeight: FontWeight.w600),),
                                  Text("Follow Up Pengobatan",style: lato.copyWith(fontSize: 6,color: Colors.black,fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),),
                                  Text("Tindakan",style: lato.copyWith(fontSize: 6,color: Colors.black,fontWeight: FontWeight.w600),),
                                  Text("Pengobatan ARV",style: lato.copyWith(fontSize: 6,color: Colors.black,fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),),
                                ],
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.fill,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
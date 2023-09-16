import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/obatku/ObatKuPage.dart';
import 'package:posithiva/theme.dart';

class EndKurir extends StatefulWidget {
  const EndKurir({super.key});

  @override
  State<EndKurir> createState() => _EndKurirState();
}

class _EndKurirState extends State<EndKurir> {
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
              children: [
                const SizedBox(
                  height: 35,
                ),
                Text("Terima Kasih", style: lato.copyWith(fontSize: 42,color: Colors.black, fontWeight: FontWeight.bold),),
                Text("Data Anda Telah Tersimpan", style: poppins.copyWith(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(180/2)
                  ),
                  child: Icon(Icons.check,color: Colors.white,size: 180,)
                ),
                const SizedBox(
                  height: 80,
                ),
                Text("Selanjutnya kami akan menghubungi \n melalui nomor Whatsapp anda", style: lato.copyWith(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                const SizedBox(
                  height: 210,
                ),
                SizedBox(
                  width: width,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(birutua)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const ObatkuPage();
                      }));
                    }, 
                    child: Text("KEMBALI",style: poppins.copyWith(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/HomePageUser.dart';
import 'package:posithiva/theme.dart';

class NotifReminderPage extends StatefulWidget {
  const NotifReminderPage({super.key});

  @override
  State<NotifReminderPage> createState() => _NotifReminderPageState();
}

class _NotifReminderPageState extends State<NotifReminderPage> {
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
          children: [
            Text("Lokasi Terkini",style: poppins.copyWith(color: Colors.grey,fontSize: 12),),
            Text("Singaraja",style: poppins.copyWith(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
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
      drawer: AppDrawer(),
      endDrawer : EndDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            width: 360,
            height: height * 1.05,
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
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
                  height: 20,
                ),
                Text("Reminder Dibuat!", style: loraItalic.copyWith(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                const SizedBox(
                  height: 20,
                ),
                Text("Ambil Obat 2 AGUSTUS 2023", style: lato.copyWith(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                Text("Obat Habis 5 AGUSTUS 2023", style: lato.copyWith(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                const SizedBox(
                  height: 280,
                ),
                Container(
                  width: width,
                  height: 47,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(birutua),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const HomePageUser();
                      }));
                    },
                    child: Text('KEMBALI KE BERANDA', style: lato.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),)
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
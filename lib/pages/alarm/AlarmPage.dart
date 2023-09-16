import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/alarm/SuksesAlarmPage.dart';
import 'package:posithiva/theme.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
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
            margin: EdgeInsets.only(top: 15),
            color: Colors.white,
            width: 360,
            height: height * 1.05,
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
                  height: 12,
                ),
                Text("Alarm Obat Saya", style: loraItalic.copyWith(color: Colors.black, fontSize: 35),),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: biruabu,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text("21.00", style: lato.copyWith(fontSize: 70, color: birutua,),)),
                        const SizedBox(
                          width: 33,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("NAMA OBAT:", style: lato.copyWith(fontSize: 10, color: Colors.black),),
                              Text("TLD", style: lato.copyWith(fontSize: 30, color: birutua),),
                              Text("JUMLAH KONSUMSI:", style: lato.copyWith(fontSize: 10, color: Colors.black),),
                              Text("1 PILL", style: lato.copyWith(fontSize: 30, color: birutua),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: biruabu,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Text("12.00", style: lato.copyWith(fontSize: 70, color: birutua,),)),
                        const SizedBox(
                          width: 33,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("NAMA OBAT:", style: lato.copyWith(fontSize: 10, color: Colors.black),),
                              Text("TLD", style: lato.copyWith(fontSize: 30, color: birutua),),
                              Text("JUMLAH KONSUMSI:", style: lato.copyWith(fontSize: 10, color: Colors.black),),
                              Text("1 PILL", style: lato.copyWith(fontSize: 30, color: birutua),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const SuksesAlarmPage();
          }));
        },
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: birutua,
              width: 5,
            )
          ),
          child: Icon(Icons.add,size: 40,color: birutua,weight: 100,),
        ),
        elevation: 2,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
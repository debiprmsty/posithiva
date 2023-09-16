import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/theme.dart';

class ObatSaya extends StatefulWidget {
  const ObatSaya({super.key});

  @override
  State<ObatSaya> createState() => _ObatSayaState();
}

class _ObatSayaState extends State<ObatSaya> {
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
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(75 / 2)),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "15",
                      style: loraItalic.copyWith(
                        fontSize: 75,
                        color: birutua,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: width,
                height: 50,
                child: TextFormField(
                  style: poppins.copyWith(fontSize: 15),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Nama Lengkap (Sesuai KTP)",
                      labelStyle:
                          poppins.copyWith(fontSize: 15, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              SizedBox(
                width: width,
                height: 50,
                child: TextFormField(
                  style: poppins.copyWith(fontSize: 15),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Alamat Domisili",
                      labelStyle:
                          poppins.copyWith(fontSize: 15, color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              SizedBox(
                width: width,
                height: 50,
                child: TextFormField(
                  style: poppins.copyWith(fontSize: 15),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: "Username / Email",
                      labelStyle:
                          poppins.copyWith(fontSize: 15, color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 310,
              ),
              SizedBox(
                width: width,
                height: 47,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(birutua)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "KEMBALI KE BERANDA",
                      style: lato.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

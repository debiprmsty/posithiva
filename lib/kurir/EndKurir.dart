import 'package:flutter/material.dart';
import 'package:posithiva/pages/doctor/LoginPageDoctor.dart';
import 'package:posithiva/pages/user/ProfileUserPage.dart';
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
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Text("Terima Kasih",style: poppins.copyWith(fontSize: 38,color: Colors.black,fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 4,
                ),
                Text("Data Anda Telah Tersimpan",style: poppins.copyWith(fontSize: 19,color: Colors.black,fontWeight: FontWeight.bold),),
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
                  height: 140,
                ),
                Text("Selanjutnya kami akan menghubungi \n melalui nomor Whatsapp anda",style: poppins.copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                    width: width,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(birutua)
                      ),
                      onPressed: (){}, child: Text("KEMBALI",style: poppins.copyWith(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),)),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
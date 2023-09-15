import 'package:flutter/material.dart';
import 'package:posithiva/pages/obatku/ObatKuPage.dart';
import 'package:posithiva/theme.dart';

class ArvPage extends StatefulWidget {
  const ArvPage({super.key});

  @override
  State<ArvPage> createState() => _ArvPageState();
}

class _ArvPageState extends State<ArvPage> {
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ObatkuPage();
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
                    "Obatku",
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
                    "Cari Dokter",
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
                    "Info ARV-ku",
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
                    "Riwayat Konsultasi",
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
                    borderRadius: BorderRadius.circular(10),
                    color: birutua,
                  ),
                  child: Text(
                    "Kalender Berobat",
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
                    "Ruang Berdaya",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Info ARV-ku",
                style: lato.copyWith(fontSize: 35, color: birutua),
              ),
              const SizedBox(
                height: 2,
              ),
              Center(
                child: Image.asset(
                  "assets/images/arv.png",
                  scale: 0.9,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: width,
                  height: 45,
                  padding: const EdgeInsets.all(2),
                  color: Colors.grey[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NAMA OBAT (ARV)",
                        style: lato.copyWith(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "Tenofovir Lamivudine Dolutegravir",
                        style: lato.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  )),
              const SizedBox(height: 8),
              Container(
                  width: width,
                  height: 45,
                  padding: const EdgeInsets.all(2),
                  color: Colors.grey[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GOLONGAN DARAH",
                        style: lato.copyWith(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "Kombinasi (NRTI dan INSTI)",
                        style: lato.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.45,
                    padding: const EdgeInsets.all(3),
                    height: 250,
                    color: Colors.grey[300],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CARA KERJA OBAT",
                          style: lato.copyWith(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w100),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Tenofir dan Lamivudine \n merupakan golongan NRTI \n yang menghambat proses replikasi atau penyalinan \n virus dalam tubuh .",
                          style: lato.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Donutegravir merupakan \n golongan INSTI yang \n menghambat proses integrasi \n materi genetik virus dalam \n sel inang dalam tubuh .",
                          style: lato.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                      width: width * 0.43,
                      padding: const EdgeInsets.all(3),
                      height: 250,
                      color: Colors.grey[300],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ATURAN PAKAI OBAT",
                            style: lato.copyWith(
                                fontSize: 10,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w100),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                alignment: Alignment.topCenter,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(7 / 2)),
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                child: Text(
                                  "Minum satu pil, sekali \n sekali waktu yang \n sama setiap hari",
                                  style: lato.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                alignment: Alignment.topCenter,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(7 / 2)),
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                child: Text(
                                  "Tablet TLD dapat \n dikonsumsi dengan atau \n tanpa makanan.",
                                  style: lato.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 7,
                                height: 7,
                                alignment: Alignment.topCenter,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(7 / 2)),
                              ),
                              Container(
                                width: 120,
                                height: 100,
                                child: Text(
                                  "Setelah memulai TLD, \n pasien harus kembali ke klinik untuk kunjungan tindak lanjut dalam dua minggu,tetapi pasien dapat kembali sebelum itu jika terdapat efek samping.",
                                  style: lato.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                  width: width,
                  height: 58,
                  padding: const EdgeInsets.all(2),
                  color: Colors.grey[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EFEK SAMPING OBAT",
                        style: lato.copyWith(
                            fontSize: 10,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        "Insomnia,Sakit Kepala,Agitasi,Nausea,Diare,Ruam \n pada Kulit",
                        style: lato.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  )),
              const SizedBox(height: 12),
              Container(
                  width: width,
                  height: 150,
                  padding: const EdgeInsets.all(2),
                  color: Colors.grey[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "HAL - HAL LAIN SEPUTAR OBAT",
                          style: lato.copyWith(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 7,
                            height: 7,
                            alignment: Alignment.topCenter,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(7 / 2)),
                          ),
                          Container(
                            width: 310,
                            height: 40,
                            child: Text(
                              "Bagi pasien yang juga mengidap TBC agar mengkonsumsi TLD 12 jam setelah DTG",
                              style: lato.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 12),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 7,
                            height: 7,
                            alignment: Alignment.topCenter,
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(7 / 2)),
                          ),
                          Container(
                            width: 310,
                            height: 40,
                            child: Text(
                              "Perlu perhatian khusus bagi pasien yang juga mengidap diabetes yang tidak terkontrol",
                              style: lato.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 12),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

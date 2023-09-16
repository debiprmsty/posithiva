import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/kurir/EndKurir.dart';
import 'package:posithiva/theme.dart';

class KurirReguler extends StatefulWidget {
  const KurirReguler({super.key});

  @override
  State<KurirReguler> createState() => _KurirRegulerState();
}

class _KurirRegulerState extends State<KurirReguler> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _kontakController = TextEditingController();
  TextEditingController _kirimController = TextEditingController();
  TextEditingController _jenisObatController = TextEditingController();
  TextEditingController _pelayananController = TextEditingController();
  TextEditingController _estimasiBiayaController = TextEditingController();

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
                  height: 20,
                ),
                Text("Kurir Reguler", style: lato.copyWith(fontSize: 45, color: Colors.black, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 20,
                ),
                Text("Nama Lengkap (Sesuai KTP)", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _namaController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Alamat Tujuan", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _alamatController,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Kontak", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _kontakController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Dikirim dari Puskesmas", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _kirimController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Jenis Obat", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _jenisObatController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Pelayanan", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _pelayananController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Estimasi Biaya", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  style: poppins,
                  controller: _estimasiBiayaController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[350],
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 25,
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
                        return const EndKurir();
                      }));
                    }, 
                    child: Text("SIMPAN",style: lato.copyWith(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
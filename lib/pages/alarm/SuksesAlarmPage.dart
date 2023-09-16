import 'package:flutter/material.dart';
import 'package:posithiva/theme.dart';

class SuksesAlarmPage extends StatefulWidget {
  const SuksesAlarmPage({super.key});

  @override
  State<SuksesAlarmPage> createState() => _SuksesAlarmPageState();
}

class _SuksesAlarmPageState extends State<SuksesAlarmPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaobatController = TextEditingController();
  TextEditingController _jmlkonsumsiController = TextEditingController();

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
                Text("Tambahkan Alarm", style: loraItalic.copyWith(color: Colors.black, fontSize: 35),),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: width,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          style: poppins,
                          controller: _namaobatController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Nama Obat',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          style: poppins,
                          controller: _jmlkonsumsiController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Jumlah Konsumsi',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide.none
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text("Set Waktu",style:poppins.copyWith(color: Colors.grey,fontSize: 13),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: SizedBox(
                            width: width,
                            height: 80,
                            child: TimePicker()
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            width: 300,
                            height: 60,
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
                                  return const SuksesAlarmPage();
                                }));
                              },
                              child: Text('BUAT ALARM', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w200, fontSize: 25),)
                            ),
                          ),
                        ),
                      ],
                    ),
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

class TimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Container(
          width:92,
          child: ListView.builder(
             itemCount: 240, // Jumlah detik dalam satu menit
            itemBuilder: (BuildContext context, int index) {
              int second = index % 24; // Menggunakan modulo operator untuk mengulang detik dari 0 hingga 59
              String secondText = second.toString().padLeft(2, '0'); // Format detik (00, 01, ..., 59)
              return ListTile(
                title: Text(
                  '$secondText',
                  style: TextStyle(
                    fontSize: 47,
                    color: birutua,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Lakukan sesuatu dengan detik yang dipilih
                  print('00:00:$secondText');
                },
              );
            },
          )
        ),
        Container(
          alignment: Alignment.center,
          child: Text(':',style: poppins.copyWith(fontSize: 47,color: birutua,fontWeight: FontWeight.bold),),
        ),
        Container(
          width:92,
          child: ListView.builder(
             itemCount: 600, // Jumlah detik dalam satu menit
            itemBuilder: (BuildContext context, int index) {
              int second = index % 60; // Menggunakan modulo operator untuk mengulang detik dari 0 hingga 59
              String secondText = second.toString().padLeft(2, '0'); // Format detik (00, 01, ..., 59)
              return ListTile(
                title: Text(
                  '$secondText',
                  style: TextStyle(
                    fontSize: 47,
                    color: birutua,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Lakukan sesuatu dengan detik yang dipilih
                  print('00:00:$secondText');
                },
              );
            },
          )
        ),
        Container(
          alignment: Alignment.center,
          child: Text(':',style: poppins.copyWith(fontSize: 47,color: birutua,fontWeight: FontWeight.bold),),
        ),
        Container(
          width:92,
          child: ListView.builder(
             itemCount: 600, // Jumlah detik dalam satu menit
            itemBuilder: (BuildContext context, int index) {
              int second = index % 60; // Menggunakan modulo operator untuk mengulang detik dari 0 hingga 59
              String secondText = second.toString().padLeft(2, '0'); // Format detik (00, 01, ..., 59)
              return ListTile(
                title: Text(
                  '$secondText',
                  style: TextStyle(
                    fontSize: 47,
                    color: birutua,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Lakukan sesuatu dengan detik yang dipilih
                  print('00:00:$secondText');
                },
              );
            },
          )
        ),
      ],
    );
  }
}
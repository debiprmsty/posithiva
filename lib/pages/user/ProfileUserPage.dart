import 'package:flutter/material.dart';
import 'package:posithiva/theme.dart';

class ProfilUserPage extends StatefulWidget {
  const ProfilUserPage({super.key});

  @override
  State<ProfilUserPage> createState() => _ProfilUserPageState();
}

class _ProfilUserPageState extends State<ProfilUserPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _no_bpjs = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
   String _email = '', _password = '';
  
  bool _showPassword = false;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

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
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                Container(
                  width: 320,
                  height: 150,
                  margin: const EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            margin: const EdgeInsets.only(bottom: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[600],
                              image: DecorationImage(image: AssetImage("assets/images/avatar.png",),fit: BoxFit.cover)
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mario \nMariono", textAlign: TextAlign.left, style: poppins.copyWith(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),
                          Text("BPJS. 7292614 111 391", style: poppins.copyWith(color: Colors.black, fontSize: 15),)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  height: height * 0.5 + 250,
                  width: 320,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama Lengkap (Sesuai KTP)", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: poppins,
                          controller: _namaController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              fillColor: abu,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Alamat Domisili", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: poppins,
                          controller: _alamatController,
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                              fillColor: abu,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Username/Email", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: poppins,
                          controller: _usernameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              fillColor: abu,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Nomor BPJS", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: poppins,
                          controller: _no_bpjs,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: abu,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Kata Sandi", style: poppins.copyWith(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: poppins,
                          obscureText: !_showPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password = value!;
                          },
                          controller: _passwordController,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: togglePasswordVisibility,
                                  icon: Icon(
                                    _showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  )),
                              fillColor: abu,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  borderSide: BorderSide.none)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 320,
                          height: 41,
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
                                return const ProfilUserPage();
                              }));
                            },
                            child: Text('SIMPAN', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),)
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
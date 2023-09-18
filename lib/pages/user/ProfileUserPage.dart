import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

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
  TextEditingController imageController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
   String _email = '', _password = '';
  
  late File? _getImage;
  String namaLengkap ='';
  String bpjs = '';
  bool _showPassword = false;
  String imageProfile = '';
  String apiRole = '';

  Future<String?> _getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

   Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) { // Periksa jika gambar telah berhasil diambil
      setState(() {
        _getImage = File(pickedFile.path);
      });

      imageController.text = _getImage!.path;
    }
  }


  Future<void> fetchData() async {
    final token = await _getToken();
    print(token);
    if(token != null) {
      final url = "https://apigapro.000webhostapp.com/api/me";
      final response = await http.get(Uri.parse(url),headers: {'Authorization': 'Bearer $token'},);

      if (response.statusCode == 200) {
          final data = json.decode(response.body);
          setState(() {
            _namaController.text = data['name'];
            _alamatController.text = data['alamat'];
            _usernameController.text = data['email'];
            _no_bpjs.text = data['no_bpjs'];

            namaLengkap = data['name'];
            bpjs = data['no_bpjs'];

            if(data['image'] != '') {
              imageProfile = data['image'];
            }

            if(data['role'] == 'pasien') {
              apiRole = 'pasien';
            }else if(data['role'] == 'nakes') {
              apiRole = 'nakes';
            }
          });
      }else {
        print('Gagal mengambil data dari API');
      }
    }
  }

  Future<void> updateUser(String name,String email,String password,String no_bpjs,String alamat,String role,String imagePath) async {
    final token = await _getToken();

    if(token != null) {
      final url = "https://apigapro.000webhostapp.com/api/update-user";

      var request = http.MultipartRequest(
        'POST',
        Uri.parse(url), // Ganti URL sesuai dengan endpoint update yang sesuai
      );
      request.headers['Authorization'] = 'Bearer $token';

      request.fields['name'] = name;
      request.fields['email'] = email;
      request.fields['password'] = password;
      request.fields['no_bpjs'] = no_bpjs;
      request.fields['alamat'] = alamat;
      request.fields['role'] = role;

      if (imagePath.isNotEmpty) {
        var imageFile = File(imagePath);
        var stream = http.ByteStream(imageFile.openRead());
        var length = await imageFile.length();

        var multipartFile = http.MultipartFile(
          'file',
          stream,
          length,
          filename: path.basename(imageFile.path),
        );

        request.files.add(multipartFile);
      }else {
        var multipartFile = http.MultipartFile.fromString(
          'file',
          '', // Ini akan memberikan nilai kosong (empty string) pada field 'file'
        );
      }

      var response = await request.send();
      var responseData = await response.stream.bytesToString();
      print(responseData);
      


    }
     
  }






  @override
  void initState() {
    super.initState();
    fetchData();
  }

  

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
     if (namaLengkap.contains(' ')) {
      List<String> namaSplit = namaLengkap.split(' ');
      namaLengkap = namaSplit.join('\n');
    }

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
          child: FutureBuilder(
            future: _getToken(),
            builder: (BuildContext context,snapshot) {
               final token = snapshot.data;
                if(token != null) {
                  return Container(
                        margin: EdgeInsets.only(top: 15),
                        color: Colors.white,
                        width: 350,
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
                              width: 350,
                              height: 150,
                              margin: const EdgeInsets.only(top: 15),
                              padding: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 5),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: imageProfile == '' ? Image.asset(
                                            "assets/images/avatar_grey.png",
                                            scale: 0.35,
                                            fit: BoxFit.cover,
                                          ) : Image.network("https://apigapro.000webhostapp.com/api/image/$imageProfile", scale: 0.35,
                                            fit: BoxFit.cover,)
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          child: GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                builder: (BuildContext context){
                                                  return Container(
                                                      height: 60.0,
                                                      child: Column(
                                                      children: [
                                                      ListTile(
                                                        leading: Icon(Icons.photo),
                                                        title: Text('Gallery'),
                                                        onTap: () {
                                                          _pickImage(ImageSource.gallery);
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                            },
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.circular(30/2)
                                              ),
                                              child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                                            ),
                                          )
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(
                                          style: poppins.copyWith(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
                                          children: [
                                            TextSpan(
                                              text: namaLengkap,
                                            ),
                                          ],
                                        ),
                                      ),

                                      Text("BPJS. ${bpjs}", style: poppins.copyWith(color: Colors.black, fontSize: 15),)
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
                              width: 350,
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Visibility(
                                      visible: false,
                                       child: Container(
                                          width: width,
                                          height: 80,
                                          margin: const EdgeInsets.only(top: 12),
                                          child: TextFormField(
                                            controller: imageController,
                                            decoration: InputDecoration(labelText: 'Image URL'),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter product image URL.';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
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
                                          return 'Silahkan masukkan password akun terlebih dahulu';
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
                                      width: 350,
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
                                        onPressed: () async {
                                          if(_formKey.currentState!.validate()) {
                                            _formKey.currentState!.validate();

                                            String name = _namaController.text;
                                          String alamat = _alamatController.text;
                                          String username = _usernameController.text;
                                          String no_bpjs = _no_bpjs.text;
                                          String image = imageController.text;
                                          String password = _passwordController.text;

                                          final data = {
                                            'name' : name,
                                            'alamat' : alamat,
                                            'username' : username,
                                            'no_bpjs' : no_bpjs,
                                            'file' : image,
                                            'password' : password,
                                            'role' : 'nakes'
                                          };

                                          await updateUser(name, username, password, no_bpjs, alamat, apiRole, image).then((value) => {
                                          
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                                content: Text('Data berhasil diupdate'),
                                                duration: Duration(seconds: 2), // Durasi notifikasi
                                              ),
                                            ),

                                           Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ProfilUserPage(),
                                            ),
                                          )});
                                          }

                                         

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
                      );
                }else {
                  return Text("Token tidak ditemukan");
                }
            }
          )
        ),
      ),
    );
  }
}
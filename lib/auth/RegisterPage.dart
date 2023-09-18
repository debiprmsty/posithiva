import 'package:flutter/material.dart';
import 'package:posithiva/api/auth.dart';
import 'package:posithiva/auth/LoginPage.dart';
import 'package:posithiva/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _no_bpjs = TextEditingController();
   String _email = '', _password = '';

  final AuthController _authController = AuthController();

  bool isChecked = false;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Row(
                        children: [
                          Text("Bantuan",style: poppins.copyWith(color: Colors.white),),
                          const SizedBox(
                            width: 6,
                          ),
                          Image.asset("assets/images/hlp.png",width: 25,height: 25,),
                        ],
                      ),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(birutua)))
                    ],
                  ),
                ],
              ),
              SizedBox(
                  height: height * 0.25,
                  child: Image.asset('assets/images/logo.png', width: 150, height: 150,)),
              Container(
                height: height * 0.5 + 270,
                width: 320,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: poppins,
                        controller: _namaController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            labelText: 'Nama Lengkap (Sesuai KTP)',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: poppins,
                        controller: _alamatController,
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                            labelText: 'Alamat Domisili',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: poppins,
                        controller: _usernameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            labelText: 'Username/Email',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(
                        height: 20,
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
                            labelText: 'Kata Sandi',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: poppins,
                        controller: _no_bpjs,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'No BPJS',
                            labelStyle: poppins.copyWith(color: Colors.grey),
                            fillColor: abu,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const SizedBox(width: 8),
                            Container(
                              width: 260,
                              height: 120,
                              child: Text(
                                "Saya setuju atas kebijakan privasi dan kebijakan penggunaan aplikasi POSITHIVA. Saya juga menjamin bahwa data yang saya masukkan ialah benar adanya dan dapat dipertanggung jawabkan.",
                                style: latoItalic.copyWith(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        )
                      ),
                      const SizedBox(
                        height: 40,
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
                          onPressed: () async {

                            if(_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              String name = _namaController.text;
                              String email = _usernameController.text;
                              String password = _passwordController.text;
                              String alamat  = _alamatController.text;
                              String no_bpjs = _no_bpjs.text;

                              await _authController.register(name, email, password, alamat, no_bpjs).then((value) => {
                                if(value['success'] == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('Registrasi berhasil!'),
                                        duration: Duration(seconds: 2), // Durasi notifikasi
                                      ),
                                    ),

                                    // Navigasi ke halaman login setelah notifikasi ditampilkan
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return LoginPage(); // Gantilah LoginPage dengan nama kelas halaman login Anda
                                    }))
                                }
                              });

                            }


                            // Navigator.push(context, MaterialPageRoute(builder: (context){
                            //   return const RegisterPage();
                            // }));
                          },
                          child: Text('DAFTAR', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),)
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
    );
  }
}

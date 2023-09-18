import 'package:flutter/material.dart';
import 'package:posithiva/api/auth.dart';
import 'package:posithiva/pages/doctor/HomePageNakes.dart';
import 'package:posithiva/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageDoctor extends StatefulWidget {
  const LoginPageDoctor({super.key});

  @override
  State<LoginPageDoctor> createState() => _LoginPageDoctorState();
}

class _LoginPageDoctorState extends State<LoginPageDoctor> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController= TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _email = '', _password = '';

  bool _showPassword = false;

  
  final AuthController _authController = AuthController();

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
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                height: 35,
              ),
              SizedBox(
                height: height * 0.25,
                child: Image.asset('assets/images/logo.png', width: 150, height: 150,)
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: height * 0.5 + 130,
                width: 320,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: poppins,
                        controller: _usernameController,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                            if (value!.isEmpty) {
                              return 'Username/email tidak boleh kosong';
                            }
                            return null;
                          },
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
                        height: 30,
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
                        height: 80,
                      ),
                      Container(
                        width: 184,
                        height: 44,
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
                            if(_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                              String email = _usernameController.text;
                              String password = _passwordController.text;

                              final data = {
                                'email' : email,
                                'password' : password
                              };

                               _authController.loginNakes(email, password).then((value) async {
                                   if(value['success'] == false) {
                                     ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text('Username atau Password salah'),
                                          duration: Duration(seconds: 2), // Durasi notifikasi
                                        ),
                                      );
                                   }else if(value['success'] == true){
                                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                                      prefs.setString('token', value['token']); // Simpan token ke dalam SharedPreferences
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                        return const HomePageNakes();
                                      }));
                                   }
                                });




                            }
                            // Navigator.push(context, MaterialPageRoute(builder: (context){
                            //   return const HomePageNakes();
                            // }));
                          },
                          child: Text('LOGIN', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),)
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
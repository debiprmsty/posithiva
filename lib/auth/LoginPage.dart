import 'package:flutter/material.dart';
import 'package:posithiva/api/auth.dart';
import 'package:posithiva/auth/RegisterPage.dart';
import 'package:posithiva/pages/HomePageUser.dart';
import 'package:posithiva/pages/doctor/LoginPageDoctor.dart';
import 'package:posithiva/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nomor_bpjs = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _email = '', _password = '';

  final AuthController _authController = AuthController();

  bool _showPassword = false;
  bool _textError = false;

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

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: height * 0.25,
                    child: Center(
                        child: Image.asset(
                      "assets/images/logo.png",
                      height: 150,
                      width: 150,
                    ))),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: height * 0.5 + 150,
                  width: 320,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          style: poppins,
                          controller: nomor_bpjs,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'NO BPJS tidak boleh kosong';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Nomor BPJS',
                              labelStyle: poppins.copyWith(color: Colors.grey),
                              fillColor: abu,
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide.none)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          style: poppins,
                          obscureText: !_showPassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password tidak boleh kosong';
                            } else if (value.length < 8) {
                              return 'Password minimal 8 karakter';
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
                          height: 40,
                        ),
                        Container(
                          width: 195,
                          height: 45,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(birutua),
                                shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();

                                  String no_bpjs = nomor_bpjs.text;
                                  String password = _passwordController.text;

                                  _authController
                                      .login(no_bpjs, password)
                                      .then((value) async {
                                    if (value['success'] == false) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'NO BPJS atau Password salah'),
                                          duration: Duration(
                                              seconds: 2), // Durasi notifikasi
                                        ),
                                      );
                                    } else if (value['success'] == true) {
                                      final SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      prefs.setString(
                                          'token',
                                          value[
                                              'token']); // Simpan token ke dalam SharedPreferences
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const HomePageUser();
                                      }));
                                    }
                                  });
                                }
                              },
                              child: Text(
                                'LOGIN',
                                style: poppins.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25),
                              )),
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        Text(
                          'BELUM PUNYA AKUN?',
                          style: poppins.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          width: 175,
                          height: 36,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(biruabu),
                                shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const RegisterPage();
                                }));
                              },
                              child: Text(
                                'DAFTAR',
                                style: poppins.copyWith(
                                    color: birutua,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 320,
                          height: 41,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(birutua),
                                shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
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
                                'MASUK SEBAGAI NAKES',
                                style: poppins.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20),
                              )),
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

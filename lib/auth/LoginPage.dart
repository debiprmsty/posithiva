import 'package:flutter/material.dart';
import 'package:posithiva/auth/RegisterPage.dart';
import 'package:posithiva/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nomor_bpjs = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.25,
                child: Center(child: Image.asset("assets/images/logo.png", height: 150, width: 150,))
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: height * 0.5 + 250,
                width: 320,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nomor BPJS',
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
                      decoration: InputDecoration(
                        labelText: 'Kata Sandi',
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
                      height: 40,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const RegisterPage();
                          }));
                        },
                        child: Text('LOGIN', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25),)
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    Text('BELUM PUNYA AKUN?', style: poppins.copyWith(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 15), textAlign: TextAlign.center,),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 165,
                      height: 36,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(biruabu),
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const RegisterPage();
                          }));
                        },
                        child: Text('DAFTAR', style: poppins.copyWith(color: birutua, fontWeight: FontWeight.w900, fontSize: 24),)
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                            return const RegisterPage();
                          }));
                        },
                        child: Text('MASUK SEBAGAI NAKES', style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),)
                      ),
                    ),
                  ],
                ),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}

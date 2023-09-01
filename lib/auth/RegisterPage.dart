import 'package:flutter/material.dart';
import 'package:posithiva/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController username = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation:0,
      //   leading: FilledButton.icon(
      //     onPressed: () {},
      //     icon: Icon(Icons.arrow_back_outlined),
      //     label: Text(
      //       'Kembali',
      //       style: poppins.copyWith(color: Colors.white),
      //     ),
      //     style:
      //         ButtonStyle(backgroundColor: MaterialStatePropertyAll(birutua)),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: height * 0.25,
                  child: Image.asset('assets/images/logo.png')),
              Container(
                height: height * 0.5 + 50,
                width: width,
                child: Column(
                  children: [
                    TextFormField(
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
                      height: 12,
                    ),
                    TextFormField(
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
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
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
                      height: 12,
                    ),
                    TextFormField(
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
                          width: 300,
                          height: 100,
                          child: Text(
                            "Saya setuju atas kebijakan privasi dan kebijakan penggunaan aplikasi POSITHIVA.Saya juga menjamin bahwa data yang saya masukkan ialah benar adanya dan dapat dipertanggung jawabkan.",
                            style: poppins.copyWith(
                                color: Colors.grey,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    )),
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

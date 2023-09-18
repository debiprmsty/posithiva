import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class AuthController {
  final String baseUrl = "https://apigapro.000webhostapp.com/api/";


  Future register(String name, String email, String password,String alamat,String no_bpjs) async {
    var url = Uri.parse(baseUrl + 'register');
      var response = await http.post(
        url,
        body: {
          'name' : name,
          'email' : email,
          'password' : password,
          'alamat' : alamat,
          'no_bpjs' : no_bpjs,
          'role' : 'pasien'
        },
      );

      var rsp = json.decode(response.body);
     
      if (response.statusCode == 200) {
        // Permintaan berhasil, lakukan operasi setelah login sukse
       
        return rsp;
      } else {
        return rsp;
      }
    }

    Future login(String no_bpjs, String password) async {
      var url = Uri.parse(baseUrl + 'login');
        var response = await http.post(
          url,
          body: {
            'no_bpjs': no_bpjs,
            'password': password,
          },
        );
        var rsp = json.decode(response.body);
        if (response.statusCode == 200) {

          return rsp;
        } else {
          // Permintaan gagal, tampilkan pesan kesalahan atau lakukan penanganan yang sesuai
        
          print(rsp);
          return rsp;
      }
  }

  Future loginNakes(String email, String password) async {
      var url = Uri.parse(baseUrl + 'login-nakes');
        var response = await http.post(
          url,
          body: {
            'email': email,
            'password': password,
          },
        );
        var rsp = json.decode(response.body);
        if (response.statusCode == 200) {

          return rsp;
        } else {
          // Permintaan gagal, tampilkan pesan kesalahan atau lakukan penanganan yang sesuai
        
          print(rsp);
          return rsp;
      }
  }



}
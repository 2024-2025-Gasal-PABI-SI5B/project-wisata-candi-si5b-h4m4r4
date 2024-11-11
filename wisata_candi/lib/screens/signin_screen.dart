import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

//TODO: DEKLASRASI VARIABLE

  final TextEditingController _usernameControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();

  String _errortext = '';
  bool _issign = false;
  bool _obscurepassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: APPBAR
      appBar: AppBar(
        title: const Text(
          'Sign In'
        ),
      ),
      //TODO: BODY
      body: Center(
        child: Form(
          child: Column(
            //TODO: ATUR MAINAXISALIGNMENT DAN CROSAXISALIGNMENT
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: TEXTFORMFIELD NAMA PENGGUNA
              TextFormField(
                controller: _usernameControler,
                decoration: const InputDecoration(
                  labelText: 'Nama Pengguna',
                  hintText: 'Masukan Nama Pengguna',
                  border: OutlineInputBorder(

                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //TODO: TEXTFORMFIELD KATA SANDI
              TextFormField(
                controller: _passwordControler,
                decoration: const InputDecoration(
                  labelText: 'Kata Sandi',
                  hintText: 'Masukan Kata Sandi',
                  border: OutlineInputBorder(

                  ),
                  // errorText: _errorText.isNotEmpty ? _errorText : null,
                ),
              ),
              //TODO: ELAVATEDBUTTON SIGN IN
            ],
          ) 
        ),
      ),
    );
  }
}

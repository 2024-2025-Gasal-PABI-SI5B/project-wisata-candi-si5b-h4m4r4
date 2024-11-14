import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
//TODO: DEKLASRASI VARIABLE
  final TextEditingController _nameControler = TextEditingController();

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
        title: const Text('Sign In'),
      ),
      //TODO: BODY
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: Column(
              //TODO: ATUR MAINAXISALIGNMENT DAN CROSAXISALIGNMENT
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TODO: TEXTFORMFIELD NAMA
                TextFormField(
                  controller: _nameControler,
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Masukan Nama',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //TODO: TEXTFORMFIELD USERNAME
                TextFormField(
                  controller: _usernameControler,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    hintText: 'Masukan Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //TODO: TEXTFORMFIELD KATA SANDI
                TextFormField(
                  controller: _passwordControler,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi',
                    hintText: 'Masukan Kata Sandi',
                    border: const OutlineInputBorder(),
                    errorText: _errortext.isNotEmpty ? _errortext : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurepassword = !_obscurepassword;
                        });
                      },
                      icon: Icon(
                        _obscurepassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                  obscureText: _obscurepassword,
                ),
                //TODO: ELAVATEDBUTTON SIGN IN
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign In'),
                ),
                //TODO: TEXTBUTTON SIGN UP
                const SizedBox(
                  height: 10,
                ),
                // TextButton(
                //   onPressed: (){},
                //   child: const Text('belum punya akun ?, daftar di sini'),
                // ),
                RichText(
                  text: TextSpan(
                    text: 'belum punya akun ?',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: [
                      TextSpan(
                        text: 'daftar di sini',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

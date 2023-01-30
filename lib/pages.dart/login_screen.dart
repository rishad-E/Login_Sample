import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:rishad_project/main.dart';
import 'package:rishad_project/pages.dart/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.grey,
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      maxLength: 15,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your user name',
                        suffixIcon: Icon(Icons.account_circle),
                        label: Text('USERNAME'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is Empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      maxLength: 15,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.lock),
                        label: Text('PASSWORD'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is Empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          loginCheck(context);
                        }else{
                          print('Data is Empty');
                        }
                      },
                      icon: const Icon(Icons.login),
                      label: const Text('LOGIN'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  // color: Colors.grey,
                  child: Image.asset('assets/images/loginimage.png')),
            ),
          ],
        ),
      )),
    );
  }

  void loginCheck(BuildContext ctx) async{
    final _username = _usernameController.text;
    final _password = _passwordController.text;

    if (_username == "rishad" && _password == "12345") {
      // goto homepage

      final _sharedPrefs=await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY_NAME, true); 

      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => HomeScreen()));
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text('Username and Password does not match'),
        ),
      );
    }
  }
}

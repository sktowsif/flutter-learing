import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset('assets/images/img_login.png'),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Welcome',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                print('Hi codepur');
              }, child: Text('Login'))
            ],
          ),
        )
      ],
    ));
  }
}

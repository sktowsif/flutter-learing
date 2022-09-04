import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = '';
  bool _isLoginDone = false;

  final _loginFormKey = GlobalKey<FormState>();

  _onLoginComplete(BuildContext context) async {
    if (_loginFormKey.currentState?.validate() == true) {
      setState(() {
        _isLoginDone = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      Navigator.pushNamed(context, AppRoute.homeRoute);
      setState(() {
        _isLoginDone = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _loginFormKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/img_login.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome $_username',
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Username'),
                        onChanged: (value) {
                          _username = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value?.isEmpty == true) {
                            return 'Username cannot be empty!';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration:
                              const InputDecoration(labelText: 'Password'),
                          validator: (value) {
                            if (value?.isEmpty == true) {
                              return 'Password cannot be empty!';
                            }
                            return null;
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Theme.of(context).primaryColor,
                        borderRadius:
                            BorderRadius.circular(_isLoginDone ? 40 : 4),
                        child: InkWell(
                          onTap: () => _onLoginComplete(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 40,
                            width: _isLoginDone ? 40 : 120,
                            alignment: Alignment.center,
                            child: _isLoginDone
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

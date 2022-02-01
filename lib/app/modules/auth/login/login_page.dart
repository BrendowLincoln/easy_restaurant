import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_store.dart';

class LoginPage extends StatefulWidget {
  final store = Modular.get<LoginStore>();

  LoginPage({Key? key}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.96,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            hintText: 'Usuário',
                            hintStyle: const TextStyle(color: Colors.white),
                            focusColor: Theme.of(context).colorScheme.primary,
                            filled: true,
                            fillColor: Colors.white54.withOpacity(0.2),
                            border: const UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0))),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            hintText: 'Senha',
                            hintStyle: const TextStyle(color: Colors.white),
                            focusColor: Theme.of(context).colorScheme.secondary,
                            filled: true,
                            fillColor: Colors.white54.withOpacity(0.2),
                            border: const UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0))),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              child: const Text('Esqueceu sua senha?'),
                              onTap: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 50,
                          child: ElevatedButton(
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () => Modular.to.navigate('/home/'),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

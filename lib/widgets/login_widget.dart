import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                  print(email);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Nome do usuário',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                  print(password);
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha do usuário',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  print('cliquei aqui');
                  if (email == 'lucas.goncalves@coopersystem.com.br' &&
                      password == '123') {
                    print('Login realizado com sucesso');
                  } else {
                    print(
                        'Seus dados estão incorretos, por favor tente novamente.');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

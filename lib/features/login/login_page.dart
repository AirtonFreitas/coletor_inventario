import 'package:coletor_inventario/configs/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('name'),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32))),
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                ),
                TextField(
                  onChanged: (text) {
                    //store.setName(text);
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'E-mail',
                    filled: true,
                    fillColor: ColorsUtil.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  onChanged: (text) {
                    //store.setName(text);
                  },
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key_outlined),
                    hintText: 'Senha',
                    filled: true,
                    fillColor: ColorsUtil.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                Row(
                  children: [
                    Text('       esqueci minha senha', style: TextStyle(fontSize: 12,fontStyle: FontStyle.italic),),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(18))),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(color: ColorsUtil.white),
                      )),
                    )),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Não tem conta?  '),
                    Text(
                      'Cadastre-se',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    ),
  );
}

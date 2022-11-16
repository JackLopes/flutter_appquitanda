import 'package:appquitanda/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

import 'component/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    'Cadastro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTexField(icone: Icons.email, label: 'Email'),
                    const CustomTexField(
                      icone: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                    const CustomTexField(icone: Icons.person, label: 'Nome'),
                    const CustomTexField(icone: Icons.phone, label: 'Celular'),
                    const CustomTexField(icone: Icons.file_copy, label: 'CPF'),
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(

                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: CustomColors.customSwatchColor,

                            width: 2,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          )

                        ),
                        child: const Text('Salvar', style: TextStyle(fontSize: 18),),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

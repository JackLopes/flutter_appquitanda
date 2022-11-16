import 'package:appquitanda/src/config/custom_colors.dart';
import 'package:appquitanda/src/config/custom_formatter.dart';
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
          child: Stack(children: [
            Column(
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
                       CustomTexField(
                        inputFormatters: [CustomFormatter.senhaformatter],
                        icone: Icons.lock,
                        label: 'Senha',
                        isSecret: true,
                      ),
                      const CustomTexField(icone: Icons.person, label: 'Nome'),
                       CustomTexField(
                        inputFormatters: [CustomFormatter.celformatter],
                          icone: Icons.phone, label: 'Celular'),
                      CustomTexField(
                          inputFormatters: [CustomFormatter.cpfformatter],
                          icone: Icons.file_copy,
                          label: 'CPF'),
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
                              )),
                          child: const Text(
                            'Cadastrar',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            // Posiciona numa area util
            Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 36,
                      ))),
            )
          ]),
        ),
      ),
    );
  }
}

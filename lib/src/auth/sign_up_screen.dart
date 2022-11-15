import 'package:appquitanda/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

import 'component/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children:  [
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
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top:Radius.circular(45),
              )

            ),
            child: Column(
              children: const [
                CustomTexField(icone: Icons.email, label: 'Email'),
                CustomTexField(icone: Icons.email, label: 'Email'),
                CustomTexField(icone: Icons.email, label: 'Email'),
                CustomTexField(icone: Icons.email, label: 'Email'),

              ],
            ),
          )

        ],
      ),
    );
  }
}

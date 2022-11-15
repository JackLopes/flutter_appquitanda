import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'component/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Titulo do app, Tecnica para customizar frase
               const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        TextSpan(
                          text: 'Green',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )
                        ),
                        TextSpan(
                            text: 'grocer',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ]

                    )

                ),
              //Utilizado para predeterminar uma altura
                SizedBox(
                  height: 30,
                  //Widget utilizado para formatar o array de textos
                  child: DefaultTextStyle(
                    style: const TextStyle( fontSize: 25),

                   // Pacote instalado para animar texto
                    child: AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever:true,
                        animatedTexts: [

                      FadeAnimatedText('Frutas'),
                      FadeAnimatedText('Verduras'),
                      FadeAnimatedText('Legumes'),
                      FadeAnimatedText('Carnes'),
                      FadeAnimatedText('Cereais'),
                      FadeAnimatedText('Laticínios'),
                    ]),
                  ),
                ),

              ],

            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(45),
              ),
            ),
            child: Column(
              // Strech, estica os filhos no tamanho da coluna
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTexField(icone: Icons.email, label: 'Email'),
                CustomTexField(
                    icone: Icons.password, label: 'Senha', isSecret: true),
                //SizedBox Customizar um botão
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    //arredondar cantos de um botão
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                    onPressed: () {},
                    child: const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                //Align Widget para forçar um alinhamento
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(fontSize: 10, color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      // Divider cria uma linha de divisão
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          //espessura do Divider
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text('ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          //espessura do Divider
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
//Botão so para bordas
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      //customizar bordar
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green
                      ),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18)
                     ),

                    ),
                    onPressed: () {},
                    child: const Text('Criar Conta', style: TextStyle(fontSize: 20,color: Colors.green),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

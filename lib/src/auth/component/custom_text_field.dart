import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTexField extends StatefulWidget {
  final IconData icone;
  final String label;
  final isSecret;
  final List<TextInputFormatter>? inputFormatters;
  //variavel que controla o password como true-> visivel e false->invisivel, alternado pelo setState no butão

  const CustomTexField({
    Key? key,
    required this.icone,
    required this.label,
    //Variavel que controla a visualização do suffixIcon, true-> visivel, false ->invisivel
    this.isSecret = false,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<CustomTexField> createState() => _CustomTexFieldState();
}

class _CustomTexFieldState extends State<CustomTexField> {
  bool isObscure = true;
// metodo que inicia antes da criação do widget
  @override
  void initState() {
    isObscure = widget.isSecret;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        //Utilizado em password
        obscureText: isObscure,
        decoration: InputDecoration(
            label: Text(widget.label),
            //exibe icone como botão no fim do input
            suffixIcon: widget.isSecret == true
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off))
                : null,
            //exibe icone no inicio do input
            prefixIcon: Icon(widget.icone),
            //Compactar o input
            isDense: true,

            //Transformar input em caixa box
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            )),
      ),
    );
  }
}

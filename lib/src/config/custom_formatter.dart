import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomFormatter {
  static final cpfformatter = MaskTextInputFormatter(
    mask: '***.***.***-**',
    filter: {'*': RegExp(r'[0-9]')},
  );
  static final celformatter = MaskTextInputFormatter(
    mask: '(**) *****-****',
    filter: {'*': RegExp(r'[0-9]')},
  );
  static final senhaformatter = MaskTextInputFormatter(
    mask: '********',
    filter: {'*': RegExp(r'^[a-zA-Z0-9]+$')},
  );
}

import 'package:flutter/material.dart';
import './button.dart';

class ButtonRow extends StatelessWidget {

  final List<Button> buttons; // Cria uma lista com o compenente Button, chamada buttons

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b){   /* fold == reduce */
          /* Define list como um array de Widgets vazios e adiciona um novo item a cada iteração com buttons */
          list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1), b]); 
          return list;
          /* Se for o primeiro, adicione 1 button, se não, adicione todos os espaços e buttons  */
        }),
      ),
    );
  }
}
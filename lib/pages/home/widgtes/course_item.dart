import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // alargar
      children: [
        Image.network('https://image.ibb.co/iFzor9/bat10-og.png', // nesse caso 250 x 120
        fit: BoxFit.fitWidth,),
        const SizedBox(height: 4,),
        Flexible(
          child: LayoutBuilder(
            builder: (_,constraints){
              return AutoSizeText(
                'Criação de Apps Android e IOS com Flutter - Crie 16 Apps',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.white),
                minFontSize: 3, // colocar para se caso precise reduzir
              );
            },
          ),
        ),
        Text(
          'Everson Evo',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'R\$ 22,90',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.white),
        ),
      ],


    );
  }
}

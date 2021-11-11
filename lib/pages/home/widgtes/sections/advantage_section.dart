import 'package:exemplo_responsividade_curso/breakpoints.dart';
import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget buildHorizontalAdvantage(String title, String subTitle){
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8,),
          Column(
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              Text(subTitle, style: TextStyle(color: Colors.white, fontSize: 10,)),
            ],
          ),
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subTitle){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 8,),
          Text(title, textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
          Text(subTitle, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 10,)),
        ],
      );
    }

    return LayoutBuilder(builder: (_,constraints){

      // se for tablet ou web
      if (constraints.maxWidth >= mobileBreakPoint){
        return Container(
          padding: const EdgeInsets.fromLTRB(16,0,16,16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: Wrap(
            // espaça todos os itens do Wrap do mesmo tamanho
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 16,
            spacing: 8,
            children: [
              buildHorizontalAdvantage('+45.000 alunos', 'Dadática garantida'),
              buildHorizontalAdvantage('+45.000 alunos', 'Dadática garantida'),
              buildHorizontalAdvantage('+45.000 alunos', 'Dadática garantida'),
            ],
          ),
        );
      }

      // se for mobile
      return Container(
        padding: const EdgeInsets.fromLTRB(16,0,16,16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(child: buildVerticalAdvantage('+45.000 alunos', 'Dadática garantida')),
            const SizedBox(width: 4,),
            Expanded(child: buildVerticalAdvantage('+45.000 alunos', 'Dadática garantida')),
            const SizedBox(width: 4,),
            Expanded(child: buildVerticalAdvantage('+45.000 alunos', 'Dadática garantida')),
          ],
        ),
      );

    });

  }
}

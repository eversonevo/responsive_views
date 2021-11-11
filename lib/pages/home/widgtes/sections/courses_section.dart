import 'package:exemplo_responsividade_curso/pages/home/widgtes/course_item.dart';
import 'package:flutter/material.dart';

import '../../../../breakpoints.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_,constraints){
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, // largura máxima do item, se passar de 300px joga mais uma ao lado
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          physics: NeverScrollableScrollPhysics(), //  para rolar conforme o listview
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 10),
          shrinkWrap: true, // encurta o gred para acertar em tela
          itemCount: 20,  //  se pedgar de uma api traz o length
          itemBuilder: (_,index){
            return CourseItem();
          },
        );
      },
    );
  }
}

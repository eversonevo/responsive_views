import 'package:exemplo_responsividade_curso/pages/home/widgtes/custom_search_field.dart';
import 'package:flutter/material.dart';

import '../../../../breakpoints.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          final maxWidht = constraints.maxWidth;
          print(maxWidht);

          if (maxWidht >= tabletBreakPoint){
            // aspectRatio mantém sempre a mesma proporção da imagem
            return AspectRatio(
              aspectRatio: 3.4,
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 3.2,
                    child: Image.network(
                      'https://neilpatel.com/wp-content/uploads/2019/09/maos-femininas-segurando-smartphone-com-logo-de-ap.jpeg',
                    fit: BoxFit.cover,),
                  ),
                  Positioned(
                      left: 50,
                      top: 50,
                      child: Card(
                        color: Colors.black,
                          elevation: 8,
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          width: 450,
                          child: Column(
                            children: [
                              Text(
                                'Aprenda Flutter com esse curso',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Bora Aprender Flutter com Everson Evo  RS 100,00',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              CustomSearchField(),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            );
          }

          // se for tablet
          if (maxWidht >= mobileBreakPoint){
            return SizedBox(
              height: 320,
              child: Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image.network(
                      'https://neilpatel.com/wp-content/uploads/2019/09/maos-femininas-segurando-smartphone-com-logo-de-ap.jpeg',
                      fit: BoxFit.cover,),
                  ),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Card(
                        color: Colors.black,
                        elevation: 8,
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          width: 350,
                          child: Column(
                            children: [
                              Text(
                                'Aprenda Flutter com esse curso',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                'Bora Aprender Flutter com Everson Evo  RS 100,00',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              CustomSearchField(),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            );
          }

          // se for mobile
          return Column(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network(
                  'https://neilpatel.com/wp-content/uploads/2019/09/maos-femininas-segurando-smartphone-com-logo-de-ap.jpeg',
                  fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aprenda Flutter com esse curso',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Bora Aprender Flutter com Everson Evo  RS 100,00',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8,),
                    CustomSearchField(),
                  ],
                ),
              ),

            ],
          );


        });
  }
}

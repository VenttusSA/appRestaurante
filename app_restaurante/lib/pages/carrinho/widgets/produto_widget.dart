import 'package:app_restaurante/models/carrinho_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../settings/colors.dart';

class CarrinhoWidget extends StatefulWidget {

  final CarrinhoModel model;

  const CarrinhoWidget({super.key, required this.model});

  @override
  State<CarrinhoWidget> createState() => _CarrinhoWidgetState();
}

class _CarrinhoWidgetState extends State<CarrinhoWidget> {

  int quantidade = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0),),
            color: AppColors.quaternary,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/batata.png'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NOME', style: GoogleFonts.robotoMono(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    Text('VALOR', style: GoogleFonts.robotoMono(color: Colors.black, ), softWrap: true),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          color: AppColors.primary,
                        ),
                        child: IconButton(
                          onPressed: (){
                            if(quantidade > 1){
                              setState(() => quantidade--);
                            }
                          },
                          icon: Icon(Icons.remove, color: Colors.white,),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Container(
                            alignment: Alignment.center,
                            child: Text(quantidade.toString(), style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 20),)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          color: AppColors.primary,
                        ),
                        child: IconButton(
                            onPressed: (){
                              if(quantidade < 20){
                                setState(() => quantidade++);
                              }
                            },
                            icon: Icon(Icons.add, color: Colors.white,)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:app_restaurante/pages/carrinho/widgets/produto_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../settings/colors.dart';
import '../../settings/variables.dart';
import '../cardapio/cardapio_page.dart';
import '../cardapio/widgets/produto_popup.dart';
import '../cardapio/widgets/produto_widget.dart';

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({Key? key}) : super(key: key);

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Text('Sacola', style: GoogleFonts.robotoMono(color: Colors.white)),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.background,
          ),
          child: Stack(
            children: [

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CarrinhoWidget(),
              ),

              Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarrinhoPage()));
                    },
                    child: Text('Finalizar pedido', style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width*0.4, 60),
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  children: [
                    Container(
                      child: ,
                    )
                  ],
                ),
              ),

              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarrinhoPage()));
                        },
                        child: Text('Limpar sacola', style: GoogleFonts.robotoMono(color: AppColors.primary, fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width*0.4, 60),
                          backgroundColor: AppColors.background,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.primary, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
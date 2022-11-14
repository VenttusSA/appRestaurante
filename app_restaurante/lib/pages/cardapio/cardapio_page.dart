import 'package:app_restaurante/pages/cardapio/widgets/produto_popup.dart';
import 'package:app_restaurante/pages/cardapio/widgets/produto_widget.dart';
import 'package:app_restaurante/settings/variables.dart';
import 'package:flutter/material.dart';
import 'package:app_restaurante/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../carrinho/carrinho_page.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({Key? key}) : super(key: key);

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        title: Text('Cardapio', style: GoogleFonts.robotoMono(color: Colors.white)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.background,
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(
                    children: [
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: cardapio.cardapio.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          cardapio.cardapio[index].visible = !cardapio.cardapio[index].visible;
                                        });
                                      },
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Text(cardapio.cardapio[index].nome, style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 25),),
                                              Spacer(),
                                              Icon(cardapio.cardapio[index].visible ? Icons.arrow_circle_up : Icons.arrow_circle_down)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                        color: AppColors.quaternary,
                                      ),
                                      child: Visibility(
                                        visible: cardapio.cardapio[index].visible,
                                        child: ListView.builder(
                                            physics: NeverScrollableScrollPhysics(),
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            itemCount: cardapio.cardapio[index].produtos.length,
                                            itemBuilder: (context, x){
                                              return InkWell(
                                                onTap:(){
                                                  showDialog(
                                                    context: context, 
                                                    builder: (context){
                                                      return ProdutoPopUp(model: cardapio.cardapio[index].produtos[x]);
                                                    },
                                                  );
                                                },
                                                child: ProdutoWidget(model: cardapio.cardapio[index].produtos[x],),
                                              );
                                            }
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(  
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarrinhoPage()));
                  },
                  child: Image.asset('assets/icons/pedido.png'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(60, 60),
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
import 'package:app_restaurante/pages/cardapio/widgets/produto_widget.dart';
import 'package:flutter/material.dart';
import 'package:app_restaurante/settings/colors.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                children: [
                  ProdutoWidget(imagem: 'hamburguer',),
                  ProdutoWidget(imagem: 'hamburguer',),
                  ProdutoWidget(imagem: 'hamburguer',),
                  ProdutoWidget(imagem: 'hamburguer',),
                  ProdutoWidget(imagem: 'batata',),
                  ProdutoWidget(imagem: 'batata',),
                  ProdutoWidget(imagem: 'coca',),
                  ProdutoWidget(imagem: 'coca',),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
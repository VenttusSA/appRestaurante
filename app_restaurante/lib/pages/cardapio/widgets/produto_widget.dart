import 'package:app_restaurante/models/produto_model.dart';
import 'package:app_restaurante/settings/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdutoWidget extends StatefulWidget {

  final ProdutoModel model;

  const ProdutoWidget({super.key, required this.model});

  @override
  State<ProdutoWidget> createState() => _ProdutoWidgetState();
}

class _ProdutoWidgetState extends State<ProdutoWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: Container(
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(widget.model.imagem,),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.model.nome, style: GoogleFonts.robotoMono(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    Text(widget.model.descricao, style: GoogleFonts.robotoMono(color: Colors.black, ), softWrap: true),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("RS ${widget.model.preco.toString()}0", style: GoogleFonts.robotoMono(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
    );
  }
}

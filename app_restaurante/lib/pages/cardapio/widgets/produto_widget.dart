import 'package:app_restaurante/settings/colors.dart';
import 'package:flutter/material.dart';

class ProdutoWidget extends StatefulWidget {

  final String imagem;

  const ProdutoWidget({super.key, required this.imagem});

  @override
  State<ProdutoWidget> createState() => _ProdutoWidgetState();
}

class _ProdutoWidgetState extends State<ProdutoWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
          width: MediaQuery.of(context).size.width*0.4,
          height: 200,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0),),
              color: AppColors.quaternary,
            ),
            child: Image.asset('assets/images/${widget.imagem}.png'),
          ),
      ),
    );
  }
}

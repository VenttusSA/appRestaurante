import 'package:app_restaurante/models/produto_model.dart';
import 'package:app_restaurante/settings/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdutoPopUp extends StatefulWidget {

  final ProdutoModel model;

  const ProdutoPopUp({super.key, required this.model});

  @override
  State<ProdutoPopUp> createState() => _ProdutoPopUpState();

}

class _ProdutoPopUpState extends State<ProdutoPopUp> {

  int quantidade = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(widget.model.imagem),
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.model.descricao, style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 18),),
            Divider(color: Colors.transparent,),
            Row(
              children: [
                Text('Valor:', style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                Spacer(),
                Text('RS ${widget.model.preco}0', style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 18),),
              ],
            ),
            Divider(color: Colors.transparent,),
            Container(
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
            Divider(color: Colors.transparent,),
            Text('Observações:', style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            TextField(
              obscureText: false,
              style: GoogleFonts.openSans(color: Colors.black),
              maxLines: 2,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: GoogleFonts.openSans(color: Colors.black),
              ),
            ),
            Divider(color: Colors.transparent,),
            Row(
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancelar', style: GoogleFonts.robotoMono(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("Adicionar", style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

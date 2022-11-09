import 'package:app_restaurante/pages/cardapio/cardapio_page.dart';
import 'package:app_restaurante/settings/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          alignment: Alignment.bottomRight,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                AppColors.primary,
                AppColors.secondary,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Bem vindo ao', style: GoogleFonts.robotoMono(color: Colors. white, fontSize: 25),),

                    Text('NOME DO RESTAURANTE', style: GoogleFonts.robotoMono(color: AppColors.primary, fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

                    Text('Como deseja realziar seu atendimento', style: GoogleFonts.robotoMono(color: Colors. white, fontSize: 25), textAlign: TextAlign.center,),

                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => CardapioPage(),));
                      },
                      child: Text("Auto-tendimento", style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromHeight(60),
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    Text('Ou', style: GoogleFonts.robotoMono(color: Colors. white, fontSize: 25),),
                    ElevatedButton(
                      onPressed: (){

                      },
                      child: Text("Chamar garçon", style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromHeight(60),
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}

import 'package:app_restaurante/settings/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Home page", style: TextStyle(color: Colors.white),),
          backgroundColor: AppColors.appBarColor
        ),
        body: Container(
          alignment: Alignment.bottomRight,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height *0.8,
                width: MediaQuery.of(context).size.width* 0.8,
                decoration: BoxDecoration(
                    color: AppColors.buttomTerciaryColor
                ),
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.5,
                    width: MediaQuery.of(context).size.width* 0.5,
                    decoration: BoxDecoration(
                      color: AppColors.buttomPrimaryColor
                    ),
                  ),
                ),
              ),
            )

            /*ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.shopping_bag_outlined),
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromHeight(60),
                backgroundColor: AppColors.appBarColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))

              ),
            ),*/
          ),
        ),
      );
  }
}

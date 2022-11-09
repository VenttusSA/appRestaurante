// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'categoria_model.dart';

class CardapioModel {
  List<CategoriaModel> cardapio;

  CardapioModel({
    required this.cardapio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardapio': cardapio.map((x) => x.toMap()).toList(),
    };
  }

  factory CardapioModel.fromMap(Map<String, dynamic> map) {
    return CardapioModel(
      cardapio: List<CategoriaModel>.from(
        (map['cardapio']).map<CategoriaModel>(
          (x) => CategoriaModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardapioModel.fromJson(String source) =>
      CardapioModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

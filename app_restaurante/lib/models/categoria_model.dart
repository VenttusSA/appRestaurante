// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'produto_model.dart';

class CategoriaModel {
  String nome;
  bool visible;
  List<ProdutoModel> produtos;

  CategoriaModel({
    required this.nome,
    required this.visible,
    required this.produtos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'visible': visible,
      'produtos': produtos.map((x) => x.toMap()).toList(),
    };
  }

  factory CategoriaModel.fromMap(Map<String, dynamic> map) {
    return CategoriaModel(
      nome: map['nome'] as String,
      visible: map['visible'] as bool,
      produtos: List<ProdutoModel>.from(
        (map['produtos']).map<ProdutoModel>(
          (x) => ProdutoModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriaModel.fromJson(String source) =>
      CategoriaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

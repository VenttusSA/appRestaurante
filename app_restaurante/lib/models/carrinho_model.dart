import 'dart:convert';
import 'produto_model.dart';

class CarrinhoModel {

  String id;
  String mesa;
  List<ProdutoModel> produtos;

  CarrinhoModel({
    required this.id,
    required this.mesa,
    required this.produtos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mesa': mesa,
      'produtos': produtos.map((x) => x.toMap()).toList(),
    };
  }

  factory CarrinhoModel.fromMap(Map<String, dynamic> map) {
    return CarrinhoModel(
      id: map['id'] as String,
      mesa: map['mesa'] as String,
      produtos: List<ProdutoModel>.from(
        (map['produtos']).map<ProdutoModel>(
          (x) => ProdutoModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CarrinhoModel.fromJson(String source) =>
      CarrinhoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

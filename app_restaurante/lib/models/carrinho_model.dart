import 'dart:convert';
import 'produto_model.dart';

class CarrinhoModel {

  String idProduto;
  String observacao;
  int quantidade;

  CarrinhoModel({
    required this.idProduto,
    required this.observacao,
    required this.quantidade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idProduto': idProduto,
      'observacao': observacao,
      'quantidade': quantidade,
    };
  }

  factory CarrinhoModel.fromMap(Map<String, dynamic> map) {
    return CarrinhoModel(
      idProduto: map['idProduto'] as String,
      observacao: map['observacao'] ?? '',
      quantidade: map['quantidade'] as int,

    );
  }

  String toJson() => json.encode(toMap());

  factory CarrinhoModel.fromJson(String source) =>
      CarrinhoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
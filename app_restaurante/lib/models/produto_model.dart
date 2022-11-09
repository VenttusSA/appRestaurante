// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProdutoModel {
  String nome;
  String descricao;
  double preco;
  String imagem;
  String? observacao;

  ProdutoModel({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
    this.observacao,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'descricao': descricao,
      'preco': preco,
      'imagem': imagem,
    };
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      nome: map['nome'] as String,
      descricao: map['descricao'] as String,
      preco: map['preco'] as double,
      imagem: map['imagem'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromJson(String source) =>
      ProdutoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

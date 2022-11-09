import 'package:app_restaurante/models/cardapio_model.dart';

const String mesa = '10';

var cardapioJSON = {
  "cardapio": [
    {
      "nome": "Lanches",
      "visible" : true,
      "produtos": [
        {
          "nome": "X-Salada",
          "descricao": "Pão, queijo, carne, alface, tomate e maionese",
          "preco": 15.0,
          "imagem": "assets/images/hamburguer.png",
        },
        {
          "nome": "X-Bacon",
          "descricao": "Pão, queijo, carne, bacon e maionese",
          "preco": 20.0,
          "imagem": "assets/images/hamburguer.png",
        },
        {
          "nome": "X-Duplo",
          "descricao": "Pão, queijo cheddar, 2 carnes, alface, tomate e maionese",
          "preco": 25.0,
          "imagem": "assets/images/hamburguer.png",
        },
        {
          "nome": "X-Egg",
          "descricao": "Pão, queijo, carne, ovo frito",
          "preco": 18.0,
          "imagem": "assets/images/hamburguer.png",
        },
        {
          "nome": "X-Vegano",
          "descricao": "Pão e papelão",
          "preco": 46.0,
          "imagem": "assets/images/hamburguer.png",
        }
      ]
    },
    {
      "nome": "Porções",
      "visible" : true,
      "produtos": [
        {
          "nome": "Fritas",
          "descricao": "Batata fritas com sal",
          "preco": 15.0,
          "imagem": "assets/images/batata.png",
        },
        {
          "nome": "Calabresa",
          "descricao": "Porção de calabresa com cebola",
          "preco": 15.0,
          "imagem": "assets/images/batata.png",
        }
      ]
    },
    {
      "nome": "Bebidas",
      "visible" : true,
      "produtos": [
        {
          "nome": "Coca-Cola",
          "descricao": "Coquinha gelada hummmmm",
          "preco": 5.0,
          "imagem": "assets/images/coca.png",
        },
        {
          "nome": "Fanta Laranja",
          "descricao": "Melhor sabor de fanta",
          "preco": 5.0,
          "imagem": "assets/images/coca.png",
        },
        {
          "nome": "Guarana",
          "descricao": "Como refresca",
          "preco": 5.0,
          "imagem": "assets/images/coca.png",
        }
      ]
    }
  ]
};

CardapioModel cardapio = CardapioModel.fromMap(cardapioJSON);
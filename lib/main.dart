import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//criando uma LISTA/VETOR com o nome de CIDADES
  var cidades = [
    'tijucas',
    'joinville',
    'itapema',
    'balneario camboriu',
    'floripa',
    'sao jose'
  ];

//criando a variavel indice q vai nos ajudar a percorrer a LISTA CIDADES
  var indice = 0;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //tudo q ta no safe area ta na area visivel do app
        body: SafeArea(
          //column para se quiser poder criar VARIOS CONTAINERS
          child: Column(
            //children é tipo uma lista/vetor de coisas tipo containers
            children: [
              //criando um container, com tamanho, cor, e o texto q é a LISTA/VETOR NOMES
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                //imprimindo a LISTA cidades, comecando com o valor de INDICE em 0
                //ou seja comecando pela cidade 0/inicial TIJUCAS
                child: Text(cidades[indice]),
              ),
              //gesture detector, e uma AREA de detecao ao TOQUE/CLICK na TELA
              GestureDetector(
                //ao ser CLICADO 1 vez no local
                onTap: () {
                  //o SETSTATE vai permitir ALTERAR o valor da variavel INDICE... somando + 1
                  setState(() {
                    indice = indice + 1;
                  });
                },
                //container q servir para ser CLICADO, e para EXIBIR o nome da NOVA CIDADE
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  //mostrando o valor seguinte da lista CIDADES,
                  //pois agora o INDICE nao e 0, mas sim 1 ou MAIS
                  child: Text(cidades[indice]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

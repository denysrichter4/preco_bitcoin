import 'package:flutter/material.dart';
import 'package:preco_bitcoin/model/repository.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String price = "";

  _getPrice(){
    setState(() {
      price = Repository().getPrice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(""),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: RaisedButton(
                child: Text("Atualizar"),
                onPressed: _getPrice,
              ),
            ),
          ],
        ),
      )
    );
  }
}

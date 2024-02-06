import 'package:app_vendas/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho',
            style: GoogleFonts.nunitoSans(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Seu Carrinho',
              style:
                  GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
            )),
        Container(
          margin: const EdgeInsets.all(8),
          height: 400,
          width: 400,
          child: Card(
            color: Colors.purple[50],
            elevation: 4,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/images/racao3.png',
                    width: 210,
                    height: 210,
                  ),
                ),
                Text('Ração para gatos Whiskas',
                    style: GoogleFonts.roboto(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                Text('RS 20,00',
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[400])),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Finalizar Compra')),
          ],
        )
      ]),
    );
  }
}

import 'package:app_vendas/carrinho.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pet Snoop',
          style: GoogleFonts.nunitoSans(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.shopping_cart,
          )
        ],
        backgroundColor: Colors.purple[400],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bem \nVindo(a)',
              style:
                  GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
            )),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'Confira nossos produtos de alta qualidade para atender as necessidades do seu Pet',
            style:
                GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  'Todos',
                  style: GoogleFonts.roboto(),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(children: [
                  Image.asset(
                    'assets/images/cat.png',
                    width: 30,
                    height: 30,
                  ),
                  Text('Gatos', style: GoogleFonts.roboto(color: Colors.white))
                ]),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(children: [
                  Image.asset(
                    'assets/images/dog.png',
                    width: 30,
                    height: 30,
                  ),
                  Text('Cães', style: GoogleFonts.roboto(color: Colors.white)),
                ]),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(children: [
                  Image.asset(
                    'assets/images/bird.png',
                    width: 30,
                    height: 30,
                  ),
                  Text('Pássaros',
                      style: GoogleFonts.roboto(color: Colors.white)),
                ]),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(children: [
                  Image.asset(
                    'assets/images/lizard.png',
                    width: 30,
                    height: 30,
                  ),
                  Text('Outros',
                      style: GoogleFonts.roboto(color: Colors.white)),
                ]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text('Rações',
              textAlign: TextAlign.center,
              style: GoogleFonts.arimo(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox(
          height: 200,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const Carrinho())),
                child: Card(
                  color: Colors.purple[50],
                  elevation: 4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/racao3.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                      Text('Ração para gatos Whiskas \n RS 20,00',
                          style: GoogleFonts.roboto(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: Card(
                color: Colors.purple[50],
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/racao2.png',
                        width: 110,
                        height: 110,
                      ),
                    ),
                    Text('Ração para gatos Mandai \n RS 20,00',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: Card(
                color: Colors.purple[50],
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/racao1.png',
                        width: 110,
                        height: 110,
                      ),
                    ),
                    Text('Ração para gatos Premier \n RS 20,00',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text('Brinquedos',
              textAlign: TextAlign.center,
              style: GoogleFonts.arimo(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox(
          height: 200,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/brinquedo1.png',
                        width: 110,
                        height: 110,
                      ),
                    ),
                    Text('Ratinho de Brinquedo \n RS 20,00',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/brinquedo2.png',
                        width: 110,
                        height: 110,
                      ),
                    ),
                    Text('Varinha de Gato Retrátil \n RS 20,00',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 200,
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/images/brinquedo3.png',
                        width: 110,
                        height: 110,
                      ),
                    ),
                    Text('Arranhador para Gatos \n RS 20,00',
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

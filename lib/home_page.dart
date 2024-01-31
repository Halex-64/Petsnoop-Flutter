import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Snoop',style: GoogleFonts.nunitoSans(fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bem \nVindo(a)',
              style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Confira nossos produtos de alta qualidade para atender as necessidades do seu Pet',
              style: GoogleFonts.roboto(fontSize:18 , fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50)),
              child: Row(
              children: [
                Image.asset('assets/images/cat.png', width: 50,height: 50),
                Text('Gatos', style: GoogleFonts.roboto(color: Colors.white))
              ],
              ),
          )
        ]
      ),
    );
  }
}
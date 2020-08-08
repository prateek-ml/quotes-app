import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesApp()
  ));
}

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself, fuck off!'),
    Quote(author: 'Albert Einstein', text: 'Mass produces energy, dumbass'),
    Quote(author: 'Isaac Newton', text:'Every object attracts other objects. Except you'),
    Quote(author: 'M.S. Dhoni', text: 'Oye bho***ke idhar dekh le. Udhar kya dekh raha hai?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[280],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:
        Column(
          children: quotes.map((quote) => QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
          )).toList()
        ),
    );
  }
}
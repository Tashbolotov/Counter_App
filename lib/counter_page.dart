import 'dart:developer';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}
//String tekst ='бул текс болот';

class _CounterPageState extends State<CounterPage> {
  String tekst = 'бул текс болот';
  void teksttiOzgort() {
    setState(() {
      tekst = 'Текс озгорду ';
    });
    // tekst = 'текс озгорду';
  }

  int _count = 10;
  @override
  Widget build(BuildContext context) {
    _count++;
    log('dcd :$_count');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Heder',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                teksttiOzgort();
                // setState(() {});
                //tekst = 'текс озгорду';
                //log('Tekst Ozgordu ====> $tekst');
              },
              child: Container(
                height: 50,
                width: 300,
                color: Colors.blue,
                child: Text(
                  tekst,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        color: Colors.amber,
        child: const Text(
          'Fouter',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

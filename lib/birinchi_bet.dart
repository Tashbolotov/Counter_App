import 'package:counter_app/ekinchi_bet.dart';
import 'package:flutter/material.dart';

class Sabak1 extends StatefulWidget {
  const Sabak1({Key key}) : super(key: key);

  @override
  _Sabak1State createState() => _Sabak1State();
}

class _Sabak1State extends State<Sabak1> {
  int _san = 0;
  void _koboituu() {
    _san++;
    setState(() {});
  }

  void _azaituu() {
    _san--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EkinchiBet(
                      kelgenSan: _san.toString(),
                    ),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color(0xffBDBDBD),
                ),
                width: 294,
                height: 48,
                child: Center(
                  child: Text(
                    'San: $_san',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _azaituu();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff005EA6),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 76,
                    height: 44,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    _koboituu();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff005EA6),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    width: 76,
                    height: 44,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

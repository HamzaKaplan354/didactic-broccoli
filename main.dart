import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KahveciUygulamasi(),
    );
  }
}
class KahveciUygulamasi extends StatefulWidget {
  const KahveciUygulamasi({Key? key}) : super(key: key);
  @override
  State<KahveciUygulamasi> createState() => _KahveciUygulamasiState();
}
int yanitIndex = 0;
List<String> yanitlar = [];
class _KahveciUygulamasiState extends State<KahveciUygulamasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        centerTitle: true,
        title: const Text(
          'Flutter Kahvecisi',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/kahve.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            const Text(
              'Flutter Kahvecisi',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'DancingScript',
                color: Colors.white,
              ),
            ),
            Container(
              height: 10,
            ),
            const Text(
              'BİR KAHVE UZAĞINDA',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'DancingScript',
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              color: Colors.brown[600],
              child: ListTile(
                leading: const Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                title: const Text(
                  'SiparişKahvecisi@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  setState(() {
                      yanitIndex = Random().nextInt(5) + 11;
                    },
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              color: Colors.brown[600],
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: const Text(
                  '+90 555 55 55',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  setState(() {
                      yanitIndex = Random().nextInt(5) + 11;
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
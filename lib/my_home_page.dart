import 'package:calculoviagem/calculo.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color.fromARGB(202, 20, 20, 20),
      body: Column(
        children: [
          Image.asset(
            'image/car.png',
            width: 645,
            height: 463.53753662109375,
          ),
          const Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(1),
                      child: Text(
                        'Calcule a sua viagem',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Um aplicativo onde você não fica perdido em quanto vai gastar, mas de forma exata a quantidade que vai utilizar em sua viagem',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 160, 160, 160)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const calculo(),
                  ),
                );
              },
              child: const Text(
                "Vamos lá!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(220, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                minimumSize: const Size(320, 60),
                backgroundColor: Color.fromARGB(255, 1, 108, 116),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

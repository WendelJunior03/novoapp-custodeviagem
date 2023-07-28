import 'package:calculoviagem/my_home_page.dart';
import 'package:flutter/material.dart';

class calculo extends StatefulWidget {
  const calculo({super.key});

  @override
  State<calculo> createState() => _calculoState();
}

// ignore: camel_case_types
class _calculoState extends State<calculo> {
  final destinyController = TextEditingController();
  final literController = TextEditingController();
  final ethanolController = TextEditingController();
  final gasolineController = TextEditingController();

  String infoText = '';
  String infoText2 = '';

  travelCalculate() {
    double liter = double.parse(literController.text);
    double destiny = double.parse(destinyController.text);
    double ethanol = double.parse(ethanolController.text);
    double gasoline = double.parse(gasolineController.text);

    final resultEthanol = (ethanol / liter) * destiny;
    final resultGasoline = (gasoline / liter) * destiny;

    setState(() {
      infoText =
          'Você irá gastar com (Etanol) R\$${resultEthanol.toStringAsFixed(2)}';
      infoText2 =
          'Você irá gastar com (Gasolina) R\$${resultGasoline.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(202, 20, 20, 20),
      resizeToAvoidBottomInset: false, //Aqui tira a faixa amarela
      body: Column(
        children: [
          Container(
            width: 428,
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(255, 2, 152, 172),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Km Cidade de Destino',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(202, 20, 20, 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 12,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    controller: destinyController,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'km por litro',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(202, 20, 20, 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 12,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    controller: literController,
                  ),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Etanol',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(202, 20, 20, 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 12,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: ethanolController,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Gasolina',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(202, 20, 20, 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 12,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          controller: gasolineController,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: travelCalculate,
                    child: const Text(
                      "Calcular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      minimumSize: const Size(200, 45),
                      backgroundColor: const Color.fromARGB(202, 20, 20, 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      width: 3000,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            infoText,
                            style: const TextStyle(
                              color: const Color.fromARGB(202, 20, 20, 20),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            infoText2,
                            style: const TextStyle(
                              color: const Color.fromARGB(202, 20, 20, 20),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(
                FocusNode(),
              ),
              child: Container(
                alignment: const AlignmentDirectional(1, 10),
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'image/car3.png',
                      height: 380,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Voltar",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(201, 255, 255, 255),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 36, 39),
      body: Column(
        children: [
          const SizedBox(height: 70.0),
          Center(
            child: Image.network(
                'https://cdn141.picsart.com/299750768161211.png',
                scale: 18.0),
          ),
          const Text(
            'Crypto',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'O maior marketplace de NFTs do Brasil',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(height: 30.0),
          Container(
            height: 60.0,
            width: 350.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              border: Border.all(color: Colors.grey),
              color: const Color.fromARGB(255, 59, 55, 63),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.person, color: Colors.white),
                  hintText: 'Login',
                ),
              ),
            ),
          ),
          Container(
            height: 60.0,
            width: 350.0,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
              border: Border.all(color: Colors.grey),
              color: const Color.fromARGB(255, 59, 55, 63),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.lock_open_outlined, color: Colors.white),
                  hintText: 'Senha',
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 221, 99, 140),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * .90,
            height: 50.0,
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 212, 66, 193),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * .90,
            height: 50.0,
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 59, 55, 63),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
              child: const Text(
                'Cadastrar',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://icones.pro/wp-content/uploads/2021/04/icone-trait-violet.png',
                scale: 8.0,
                color: const Color.fromARGB(255, 59, 55, 63),
              ),
              const Text(' ou'),
              Image.network(
                'https://icones.pro/wp-content/uploads/2021/04/icone-trait-violet.png',
                scale: 8.0,
                color: const Color.fromARGB(255, 59, 55, 63),
              ),
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Button'),
          )
        ],
      ),
    );
  }
}

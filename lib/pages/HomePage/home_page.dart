import 'package:counter_app/pages/AboutAppPage/about_app_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutApPage()));
              },
              icon: Icon(
                Icons.info
              )
          )
        ],
      ),
      backgroundColor: const Color(0xFFF7ECEA),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Hello'),
            const Text('Welcome to the jungle'),
            ///A Row sempre utiliza a largura máxima
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Teste'),
                    Text('123')
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

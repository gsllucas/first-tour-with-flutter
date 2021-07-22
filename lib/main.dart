import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: HelloWorld(),
        ),
      ),
    );
  }
}

class HelloWorld extends StatefulWidget {
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  // variavel mutável
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter > 0
          ? counter--
          : print('Seu counter é: $counter \$ teste cifrão');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$counter',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: increment,
              child: Text('Incrementar'),
            ),
            SizedBox(width: 24),
            ElevatedButton(
              onPressed: decrement,
              child: Text('Decrementar'),
            ),
          ],
        ),
      ],
    );
  }
}

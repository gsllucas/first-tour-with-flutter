import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Widgets são elementos visuais
// componentes que serão renderizados na tela

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Text('testano'),
    );
  }
}

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransferItem(Transfer(100, 1000)),
        TransferItem(Transfer(200, 2000)),
        TransferItem(Transfer(300, 3000)),
      ],
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext content) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.accountNumber.toString()),
      ),
    );
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);
}

class FormTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: FormTransfer(),
      floatingActionButton: FloatingActionButton(
        onPressed: printSomething,
        child: Icon(Icons.add),
      ),
    );
  }

  void printSomething() {
    print('Hello World');
  }
}

// class HelloWorld extends StatefulWidget {
//   @override
//   _HelloWorldState createState() => _HelloWorldState();
// }

// class _HelloWorldState extends State<HelloWorld> {
//   // variavel mutável
//   int counter = 0;

//   void increment() {
//     setState(() {
//       counter++;
//     });
//   }

//   void decrement() {
//     setState(() {
//       counter > 0
//           ? counter--
//           : print('Seu counter é: $counter \$ teste cifrão');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           '$counter',
//           style: TextStyle(fontSize: 20),
//         ),
//         SizedBox(height: 24),
//         Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: increment,
//               child: Text('Incrementar'),
//             ),
//             SizedBox(width: 24),
//             ElevatedButton(
//               onPressed: decrement,
//               child: Text('Decrementar'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

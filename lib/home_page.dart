import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  var randomItem = "";
  List result = ['Strike', 'Ball', 'HbP', 'hit', 'foul-ball'];
  void action() {
    setState(() {
      counter++;
      randomItem = (result.toList()..shuffle()).first;
      print(randomItem);
      print(counter);
      print('Lancio nr. $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Conta Lanci 5.0')),
      body: Center(
        child: Center(
          child: Column(children: [
            Text(
              "lanci effettuati $counter",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text("Michele Ebau"),
            const Text("Risultato:"),
            Text(
              randomItem,
              style: TextStyle(fontSize: 20),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: action,
        child: const Icon(Icons.sports_baseball_outlined),
      ),
    );
  }
}

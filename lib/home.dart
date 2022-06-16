import 'widgets/row_letters.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController monMotController = TextEditingController();
  Map<String, int> voyelleDico = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
    'y': 0
  };
  int nbEspaces = 0;
  int nbConsonnes = 0;

  void _reset() {
    setState(() {
      voyelleDico.forEach((key, value) {
        voyelleDico[key] = 0;
      });
      nbConsonnes = 0;
      nbEspaces = 0;
    });
  }

  void _incrementA() {
    setState(() {
      int? value = voyelleDico['a'];
      voyelleDico['a'] = value! + 1;
    });
  }

  void _incrementE() {
    setState(() {
      int? value = voyelleDico['e'];
      voyelleDico['e'] = value! + 1;
    });
  }

  void _incrementI() {
    setState(() {
      int? value = voyelleDico['i'];
      voyelleDico['i'] = value! + 1;
    });
  }

  void _incrementO() {
    setState(() {
      int? value = voyelleDico['o'];
      voyelleDico['o'] = value! + 1;
    });
  }

  void _incrementU() {
    setState(() {
      int? value = voyelleDico['u'];
      voyelleDico['u'] = value! + 1;
    });
  }

  void _incrementY() {
    setState(() {
      int? value = voyelleDico['y'];
      voyelleDico['y'] = value! + 1;
    });
  }

  void _incrementEspaces() {
    setState(() {
      nbEspaces = nbEspaces + 1;
    });
  }

  void _incrementConsonnes() {
    setState(() {
      nbConsonnes = nbConsonnes + 1;
    });
  }

  void _analyser() {
    _reset();
    var monMot = monMotController.text;
    monMot.toLowerCase();
    for (var i = 0; i < monMot.length; i++) {
      switch (monMot[i]) {
        case 'a':
          _incrementA();
          break;
        case 'e':
          _incrementE();
          break;
        case 'i':
          _incrementI();
          break;
        case 'o':
          _incrementO();
          break;
        case 'u':
          _incrementU();
          break;
        case 'y':
          _incrementY();
          break;
        case ' ':
          _incrementEspaces();
          break;
        default:
          _incrementConsonnes();
          break;
      }
    }
  }

  String _occurence(n) {
    return n > 1 ? 'occurences' : 'occurence';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Analyse Voyelle"),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: monMotController,
              decoration: InputDecoration(
                  hintText: 'Entrez un mot',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
            ),
          ),
          ElevatedButton(
            onPressed: _analyser,
            child: const Text('Analyser'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                textStyle: MaterialStateProperty.all(
                    const TextStyle(fontFamily: 'Pacifico', fontSize: 30))),
          ),
          RowLetter(
              colorRow: Colors.purple,
              letter: "A",
              textOcurrences: ": " + voyelleDico['a'].toString() +
                  " " +
                  _occurence(voyelleDico['a'])),
          RowLetter(
              colorRow: Colors.cyan,
              letter: "E",
              textOcurrences: ": " +
                  voyelleDico['e'].toString() +
                  " " +
                  _occurence(voyelleDico['e'])),
          RowLetter(
              colorRow: Colors.red,
              letter: "I",
              textOcurrences: ": " +
                  voyelleDico['i'].toString() +
                  " " +
                  _occurence(voyelleDico['i'])),
          RowLetter(
              colorRow: Colors.green,
              letter: "O",
              textOcurrences: ": " +
                  voyelleDico['o'].toString() +
                  " " +
                  _occurence(voyelleDico['o'])),
          RowLetter(
              colorRow: Colors.orange,
              letter: "U",
              textOcurrences: ": " +
                  voyelleDico['u'].toString() +
                  " " +
                  _occurence(voyelleDico['u'])),
          RowLetter(
              colorRow: Colors.blue,
              letter: "Y",
              textOcurrences: ": " +
                  voyelleDico['y'].toString() +
                  " " +
                  _occurence(voyelleDico['y'])),
          RowLetter(
              colorRow: Colors.pink,
              letter: "Espaces",
              textOcurrences:
                  ": " + nbEspaces.toString() + " " + _occurence(nbEspaces)),
          RowLetter(
              colorRow: Colors.black,
              letter: "Consonnes",
              textOcurrences: ": " +
                  nbConsonnes.toString() +
                  " " +
                  _occurence(nbConsonnes)),
        ]));
  }
}

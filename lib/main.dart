import 'home.dart';
import 'package:flutter/material.dart';


// hot reload -> Ctrl + f5
// new projet Shift + cmd + p
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compta Voyelle ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const HomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
 



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Map <String, int> voyelleDico = {'a':0,'e':0,'i':0,'o':0,'u':0,'y':0};
  int cptVoyelleA = 0;
  int cptVoyelleE = 0;
  int cptVoyelleI = 0;
  int cptVoyelleO = 0;
  int cptVoyelleU = 0;
  int cptVoyelleY = 0;

  String monMot = "bonjour";

  void _incrementeA(){

    setState(() {
      cptVoyelleA += 1;


    });
  }

    void _incrementeE(){
    setState(() {
      cptVoyelleE += 1;
    });
  }
    void _incrementeI(){
    setState(() {

      cptVoyelleI += 1;
    });
  }


   void _incrementeO(){
    setState(() {

      cptVoyelleO += 1;
    //  print("o");

    });
  }

    void _incrementeU(){
    setState(() {

      cptVoyelleU += 1;
    });
  }
    void _incrementeY(){
    setState(() {
  
      cptVoyelleY += 1;
    });
  }

  void _resetDico() {
    setState(() {
      cptVoyelleA = 0;
      cptVoyelleE = 0;
      cptVoyelleI = 0;
      cptVoyelleO = 0;
      cptVoyelleU = 0;
      cptVoyelleY = 0;
    
    });
  }
  


  void _comptage(){
    _resetDico();
    //print(monMot);
    for(var i=0; i < monMot.length; i++){
      switch(monMot[i]){
        case 'a':_incrementeA();
        break;
        case 'e':_incrementeE();
        break;
        case 'i':_incrementeI();
          break;
        case 'o':_incrementeO();
          break;
        case 'u':_incrementeU();
          break;
        case 'y':_incrementeY();
        break;
        default:break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
     
               height: 30.0,
              
               color: Colors.red,
               child: Row(
                 children: [
                   const Text('Mot',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic)),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                     child: Text(monMot,
                     style: const TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                     ),),
                   )
                 ],
               ),
             ),
           ),
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 20,
               color:Colors.purple,
               child: Row(
                 children: [
                   const Text('Nombre de A'),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text(cptVoyelleA.toString()),
                   )
                 ],
               ),
             ),
           ),
          
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 20,
               color:Colors.purple,
               child: Row(
                 children: [
                   const Text('Nombre de E'),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text(cptVoyelleE.toString()),
                   )
                 ],
               ),
             ),
           ),

             Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 20,
               color:Colors.purple,
               child: Row(
                 children: [
                   const Text('Nombre de I'),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text(cptVoyelleI.toString()),
                   )
                 ],
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 20,
               color:Colors.teal,
               child: Row(
                 children: [
                   const Text('Nombre de O'),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text(cptVoyelleO.toString()),
                   )
                 ],
               ),
             ),
           ),Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 20,
               color:Colors.brown,
               child: Row(
                 children: [
                   const Text('Nombre de U'),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text(cptVoyelleU.toString(),
                     
                     ),
                   )
                 ]),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 20,
               color: Colors.deepOrange,
               child: Row(
                 children: [
                   const Text('Nombre de Y'),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Text(cptVoyelleY.toString()),
                   )
                 ],
               ),
             ),
           ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _comptage,
        backgroundColor: Colors.red,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

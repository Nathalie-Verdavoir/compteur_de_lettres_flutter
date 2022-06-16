import 'package:flutter/material.dart';

class RowLetter extends StatelessWidget {
const RowLetter({Key? key, required this.colorRow, required this.letter, required this.textOcurrences}) : super(key:key);


  final Color colorRow;
  final String letter;
  final String textOcurrences;



  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
               child:Row(
                 children: [
                   Builder(
                     builder: (context) {
                       return Padding(
                         padding: const EdgeInsets.fromLTRB(15, 4, 0, 8),
                         child: Text("$letter ",
                         style: const TextStyle(
                           fontFamily: 'Pacifico',
                           color: Colors.white,
                           fontSize: 20.0
                         ),),
                       );
                     }
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 20.0, top:4.0, bottom: 8.0),
                     child: Builder(
                       builder: (context) {
                         return Text(textOcurrences,
                         style: const TextStyle(
                           fontFamily: 'Pacifico',
                           color: Colors.white,
                           fontSize: 20.0
                         ),
                         );
                       }
                     ),
                   )
                 ],
               ),
              height: 45,
               width: MediaQuery.of(context).size.width - 5,
              decoration: BoxDecoration(
                color: colorRow,
                // arrondi
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)

                ) 
              ),
             
            ),
          );
  }
}
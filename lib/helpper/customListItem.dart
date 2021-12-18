import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class CustomListItem extends StatelessWidget{

//   final String word;
//   final String example;
//   final String translate;

//   const CustomListItem({Key key, this.word, this.example, this.translate}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             flex: 2,
//             child: word,)
//         ],
//       ));
      
//   }

// }
class CustomListItem extends StatelessWidget{
  
  final String word;
  final  String example;
  final String translate;

  const CustomListItem({Key key, this.word, this.example, this.translate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Padding(padding: EdgeInsets.symmetric(vertical: 5.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(padding: EdgeInsets.symmetric(vertical: 2),),
      Text(word, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
      Padding(padding: EdgeInsets.symmetric(vertical: 2),),
      Text("- " + example,  style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 15),),
      Padding(padding: EdgeInsets.symmetric(vertical: 2),),
      Text("- " + translate,  style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),),
      Divider(height: 1.0, color: Colors.blue.shade600, thickness: 1.5,)
    ]
    ),
  
  );
  }

}
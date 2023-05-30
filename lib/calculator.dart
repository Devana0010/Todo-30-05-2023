// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Calculaor extends StatefulWidget {
//   const Calculaor({Key? key}) : super(key: key);
//
//   @override
//   State<Calculaor> createState() => _CalculaorState();
// }
//
// class _CalculaorState extends State<Calculaor> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(children: [
//           Padding(
//             padding: const EdgeInsets.all(35.0),
//             child: Directionality(
//               textDirection: TextDirection.rtl,
//               child: TextField(
//                 style: TextStyle(fontSize: 35),
//                 decoration: InputDecoration(
//                     hintText: "0", border: OutlineInputBorder()),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//                   children: [
//                     SizedBox(
//                         width: 100,height: 100,
//                         child: ElevatedButton(onPressed: () {}, child: Text("C"))),
//                     ElevatedButton(onPressed: () {}, child: Icon(Icons.percent)),
//                     ElevatedButton(
//                         onPressed: () {}, child: Icon(Icons.backspace_outlined)),
//                     ElevatedButton(
//                         onPressed: () {}, child: Icon(CupertinoIcons.divide)),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               children: [
//                 SizedBox(
//                      width: 100,height: 100,
//                      child: ElevatedButton(onPressed: () {}, child: Text("7"))),
//                 ElevatedButton(onPressed: () {}, child:  Text("8")),
//                 ElevatedButton(
//                     onPressed: () {}, child:  Text("9")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Icon(CupertinoIcons.multiply)),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               children: [
//                 SizedBox(
//                     width: 100,height: 100,
//                     child: ElevatedButton(onPressed: () {}, child: Text("4"))),
//                 ElevatedButton(onPressed: () {}, child: Text("5")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Text("6")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Icon(CupertinoIcons.minus)),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               children: [
//                 SizedBox(
//                     width: 100,height: 100,
//                       child: ElevatedButton(onPressed: () {}, child: Text("1"))),
//                 ElevatedButton(onPressed: () {}, child: Text("2")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Text("3")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Icon(CupertinoIcons.plus)),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               children: [
//                 SizedBox(
//                     width: 100,height: 100,
//                     child: ElevatedButton(onPressed: () {}, child: Text("00"))),
//                 ElevatedButton(onPressed: () {}, child: Text("0")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Text(".")),
//                 ElevatedButton(
//                     onPressed: () {}, child: Icon(CupertinoIcons.equal)),
//               ],
//             ),
//           ),
//
//
//
//     );
//   }
// }

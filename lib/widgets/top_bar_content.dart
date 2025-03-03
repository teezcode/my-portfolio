// import 'package:flutter/material.dart';
//
// class TopBarContents extends StatefulWidget {
//   final double opacity;
//
//   TopBarContents(this.opacity);
//
//   @override
//   _TopBarContentsState createState() => _TopBarContentsState();
// }
//
// class _TopBarContentsState extends State<TopBarContents> {
//   final List _isHovering = [
//     false,
//     false,
//     false,
//     false,
//     false,
//     false,
//     false,
//     false
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//
//     return Container(
//       color: Color(0xff1A293F).withOpacity(0.2),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             InkWell(
//               onHover: (value) {
//                 setState(() {
//                   value
//                       ? _isHovering[0] = true
//                       : _isHovering[0] = false;
//                 });
//               },
//               onTap: () {},
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'About me',
//                     style: TextStyle(
//                         color: _isHovering[0]
//                             ? Colors.white
//                             : Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                     ),
//                   ),
//                   const SizedBox(height:5),
//                   Visibility(
//                     maintainAnimation: true,
//                     maintainState: true,
//                     maintainSize: true,
//                     visible: _isHovering[0],
//                     child: Container(
//                       decoration: const BoxDecoration(
//                           color: Color(0xff15C196),
//                         shape: BoxShape.circle
//                       ),
//                       height: 8,
//                       width: 20,
//                       //color: Color(0xFF051441),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(width: 60,),
//             InkWell(
//               onHover: (value) {
//                 setState(() {
//                   value
//                       ? _isHovering[1] = true
//                       : _isHovering[1] = false;
//                 });
//               },
//               onTap: () {},
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Projects',
//                     style: TextStyle(
//                       color: _isHovering[1]
//                           ? Colors.white
//                           : Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Visibility(
//                     maintainAnimation: true,
//                     maintainState: true,
//                     maintainSize: true,
//                     visible: _isHovering[1],
//                     child: Container(
//                       decoration: const BoxDecoration(
//                           color: Color(0xff15C196),
//                           shape: BoxShape.circle
//                       ),
//                       height: 8,
//                       width: 20,
//                       //color: Color(0xFF051441),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(width: 60,),
//             InkWell(
//               onHover: (value) {
//                 setState(() {
//                   value
//                       ? _isHovering[2] = true
//                       : _isHovering[2] = false;
//                 });
//               },
//               onTap: () {},
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Contact',
//                     style: TextStyle(
//                       color: _isHovering[2]
//                           ? Colors.white
//                           : Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Visibility(
//                     maintainAnimation: true,
//                     maintainState: true,
//                     maintainSize: true,
//                     visible: _isHovering[2],
//                     child: Container(
//                       decoration: const BoxDecoration(
//                           color: Color(0xff15C196),
//                           shape: BoxShape.circle
//                       ),
//                       height: 8,
//                       width: 20,
//                       //color: Color(0xFF051441),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(width: 30,),
//             Container(
//               decoration: BoxDecoration(
//                   border: Border.all(color: const Color(0xff15C196),width: 2)
//               ),
//               width: 116,
//               height: 47,
//               child: const Center(
//                 child: Text('Resume',
//                   //textAlign: TextAlign.center,
//                   style: TextStyle(
//                   color: Color(0xff15C196),
//                   fontWeight: FontWeight.bold,
//                     fontSize: 16
//                 ),),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
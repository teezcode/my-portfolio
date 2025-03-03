// import 'package:flutter/material.dart';
//
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final ScrollController _scrollController = ScrollController();
//   double _scrollPosition = 0;
//   double _opacity = 0;
//
//   _scrollListener() {
//     setState(() {
//       _scrollPosition = _scrollController.position.pixels;
//     });
//   }
//
//   @override
//   void initState() {
//     _scrollController.addListener(_scrollListener);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     _opacity = _scrollPosition < screenSize.height * 0.40 ? _scrollPosition / (screenSize.height * 0.40) : 1;
//
//     return Scaffold(
//       // extendBodyBehindAppBar: true,
//       // appBar: PreferredSize(
//       //   preferredSize: const Size(
//       //     double.infinity, 89,
//       //   ),
//       //   child: TopBarContents(_opacity),
//       // ),
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   //color: Colors.black,
//                   decoration:  BoxDecoration(
//                       color: Color(0xff090E18),
//                       image: DecorationImage(
//                         colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
//                           image: AssetImage('images/BG.png'),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                   width: double.infinity,
//                   height:1060,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(100.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children:  [
//                             const Text('Hello,',style: TextStyle(
//                                 fontSize: 80,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white
//                             ),
//                             ),
//                             //SizedBox(height: 10,),
//                             RichText(
//                                 text:const TextSpan(
//                                     text: 'I am',
//                                     style: TextStyle(
//                                         fontSize: 80,
//                                         fontWeight: FontWeight.w700,
//                                         color: Colors.white
//                                     ),children: [
//                                   TextSpan(
//                                       text: ' Paschal',
//                                       style: TextStyle(
//                                         color: Color(0xff15C196),
//                                         fontSize: 93,
//                                       )
//                                   )
//                                 ]
//                                 )
//                             ),
//                             //SizedBox(height: 10,),
//                             const Text('Mobile Developer',style: TextStyle(
//                                 fontSize: 80,
//                                 fontWeight: FontWeight.w700,
//                                 color: Colors.white
//                             ),
//                             ),
//                             SizedBox(height: 15),
//                             const Text('Currently located in South Eastern Nigeria, i love building interactive, digital experiences \n and systems on mobile',
//                               //textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.white
//                               ),
//                             ),
//                             SizedBox(height: 40,),
//                             Container(
//                               decoration: BoxDecoration(
//                                   border: Border.all(color: Color(0xff15C196),width: 2)
//                               ),
//                               width: 356,
//                               height: 76,
//                               child: const Center(
//                                 child: Text('Lets get in touch !',
//                                   //textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16
//                                   ),),
//                               ),
//                             ),
//                             SizedBox(height: 90,),
//                             Column(
//                               children: [
//                                 Container(
//                                   decoration: const BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage('images/linkdin.png'),
//                                         //fit: BoxFit.cover
//                                       )
//                                   ),
//                                   width: 40,
//                                   height: 40,
//                                   //color: Colors.white,
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Container(
//                                   width: 40,
//                                   height: 40,
//                                   decoration: const BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage('images/twitter.png'),
//                                         //fit: BoxFit.cover
//                                       )
//                                   ),
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Container(
//                                   width: 40,
//                                   height: 40,
//                                   decoration: const BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage('images/insta.png'),
//                                         //fit: BoxFit.cover
//                                       )
//                                   ),
//                                 ),
//                                 SizedBox(height: 20,),
//                                 Container(
//                                   width: 20,
//                                   height: 20,
//                                   decoration: const BoxDecoration(
//                                       image: DecorationImage(
//                                         image: AssetImage('images/linkdin.png'),
//                                         //fit: BoxFit.cover
//                                       )
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       Stack(
//                         children: [
//                           Container(
//                             width: 700,
//                             height: 1200,
//                             //color: Colors.white,
//                           ),
//                           Positioned(
//                             top: 290,
//                             // bottom: 0,
//                             left: 40,
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 100.0),
//                               child: Container(
//                                 //color: Colors.white,
//                                 decoration: const BoxDecoration(
//                                   //color: Colors.white,
//                                     image: DecorationImage(
//                                         image: AssetImage('images/paschal.png',),
//                                         fit: BoxFit.cover
//                                     )
//                                 ),
//                                 width: 807,
//                                 height: 638,
//                                 //color: Colors.greenAccent,
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                       color: Color(0xff090E18),
//                       image: DecorationImage(
//                           image: AssetImage('images/BG.png'),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                   width: double.infinity,
//                   height: 1120,
//                   //color: Color(0xff090E18),
//                 ),
//               ],
//             ),
//             Positioned(
//               top: 900,
//               left: 890,
//               child: Container(
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('images/arrow.png'),
//                         fit: BoxFit.cover
//                     )
//                 ),
//                 width: 115,
//                 height: 134,
//                 //color: Colors.yellow,
//               ),
//             ),
//           ],
//         ),
//
//       ),
//     );
//   }
// }

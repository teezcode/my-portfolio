import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/tab_constrained_box.dart';

import 'animated_title.dart';

class MainTab extends StatelessWidget {
  const MainTab({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;
    return  TabConstrainedBox(
      rightConstraint: false,
      child: Container(
        child : Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('Hello,',style: TextStyle(
                      fontSize: 73,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                  ),
                  //SizedBox(height: 10,),
                  RichText(
                      text:const TextSpan(
                          text: 'I am',
                          style: TextStyle(
                              fontSize: 73,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),children: [
                        TextSpan(
                            text: ' Paschal',
                            style: TextStyle(
                              color: Color(0xff15C196),
                              fontSize: 73,
                            )
                        )
                      ]
                      )
                  ),

                  const SizedBox(height: 15),
                  const AnimatedTitle(),
                  const SizedBox(height: 15),
                  const Text("Currently  located in South Eastern Nigeria, i love building \ninteractive"
                      "digital experiences and systems on mobile.",style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  )),
                  const SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff15C196),width: 2)
                    ),
                    width: screenWidth * 0.25,
                    height: 76,
                    child: const Center(
                      child: Text('Lets get in touch !',
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
                    ),
                  ),
                  const SizedBox(height: 62,),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/linkdin.png'),
                              //fit: BoxFit.cover
                            )
                        ),
                        width: 40,
                        height: 40,
                        //color: Colors.white,
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/twitter.png'),
                              //fit: BoxFit.cover
                            )
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/insta.png'),
                              //fit: BoxFit.cover
                            )
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/linkdin.png'),
                              //fit: BoxFit.cover
                            )
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.only(top: 700,left: 30),
            //   decoration: const BoxDecoration(
            //     //color: Colors.yellow,
            //       image: DecorationImage(
            //           image: AssetImage('images/arrow.png'),
            //           //fit: BoxFit.cover
            //       )
            //   ),
            //   width: 115,
            //   height: 134,
            //   //color: Colors.yellow,
            // ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 408.0,left: 0,right: 0),
              child: Image.asset('images/paschal_me.png',fit: BoxFit.contain,),
            ))
          ],
        ),
      ),
    );
  }
}

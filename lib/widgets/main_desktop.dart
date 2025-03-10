import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/widgets/desktop_constrained_box.dart';

import 'animated_title.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;
    //final screenHeight =screenSize.width;

    return DesktopConstrainedBox(
      rightConstraint: false,
      child: Container(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('Hello,',style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                  ),
                  //SizedBox(height: 10,),
                  RichText(
                      text:const TextSpan(
                          text: 'I am',
                          style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                          ),children: [
                        TextSpan(
                            text: ' Paschal',
                            style: TextStyle(
                              color: Color(0xff15C196),
                              fontSize: 93,
                            )
                        )
                      ]
                      )
                  ),
                  const SizedBox(height: 10,),
                  const AnimatedTitle(),
                  const SizedBox(height: 15),
                  const Text("Currently  located in South Eastern Nigeria, i love building \ninteractive"
                      "digital experiences and systems on mobile.",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  )),
                  const SizedBox(height: 60,),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff15C196),width: 2)
                    ),
                    width: 356,
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
                  const SizedBox(height: 60,),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'svg/instagram.svg',
                      ),
                      const SizedBox(height: 30,),
                      SvgPicture.asset(
                        'svg/facebook.svg',
                      ),
                      const SizedBox(height: 30,),
                      SvgPicture.asset(
                        'svg/linkedin.svg',
                      ),
                      const SizedBox(height: 30,),
                      SvgPicture.asset(
                        'svg/twitter.svg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 700.0),
            //   child: Image.asset('images/arrow.png',fit: BoxFit.scaleDown,width: 100,)
            //   // Container(
            //   //   decoration: const BoxDecoration(
            //   //       image: DecorationImage(
            //   //           image: AssetImage('images/arrow.png'),
            //   //           fit: BoxFit.cover
            //   //       )
            //   //   ),
            //   //   width: 115,
            //   //   height: 134,
            //   //   //color: Colors.yellow,
            //   // ),
            // ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 308.0,left: 0,right: 0),
              child: Image.asset('images/paschal_me.png',width: screenWidth,),
            ))
          ],
        ),
      ),
    );
  }
}

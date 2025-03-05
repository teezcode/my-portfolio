import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'animated_title.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;
    //final screenHeight =screenSize.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 46, left: 36),
          child: Container(
            //height: screenHeight,
            constraints: const BoxConstraints(minHeight: 560),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Row(),
                const Text('Hello,',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),
                ),
                //SizedBox(height: 10,),
                RichText(
                    text:const TextSpan(
                        text: 'I am',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                        ),children: [
                      TextSpan(
                          text: ' Paschal',
                          style: TextStyle(
                            color: Color(0xff15C196),
                            fontSize: 30,
                          )
                      )
                    ]
                    )
                ),
                const SizedBox(height: 15),
                const AnimatedTitle(),
                const SizedBox(height: 15),
                const Text("Currently  located in South Eastern \nNigeria, i love building interactive"
                    "digital \nexperiences and systems on mobile.",style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                )),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff15C196),width: 2)
                    ),
                    width: screenWidth * 0.5,
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
                ),
                // const SizedBox(height: 35),
                // Container(
                //   decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/arrow.png'),
                //         //fit: BoxFit.cover
                //       )
                //   ),
                //   width: 115,
                //   height: 120,
                //   //color: Colors.yellow,
                // ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0,left: 40),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'svg/linkedin.svg',
                  ),
                  const SizedBox(height: 25,),
                  SvgPicture.asset(
                    'svg/instagram.svg',
                  ),
                  const SizedBox(height: 25),
                  SvgPicture.asset(
                    'svg/facebook.svg',
                  ),
                  const SizedBox(height: 25,),
                  SvgPicture.asset(
                    'svg/twitter.svg',
                  ),
                ],
              ),
            ),
            Expanded(child: Image.asset('images/paschal_me.png',width: screenWidth,fit: BoxFit.cover,))
          ],
        )
      ],
    );
  }
}

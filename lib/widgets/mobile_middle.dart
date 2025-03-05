import 'package:flutter/material.dart';

import 'desktop_middle.dart';

class MobileMiddle extends StatelessWidget {
  const MobileMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.2),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
                    child: Image.asset('images/stacks.png',fit: BoxFit.contain,),
                  ),
                  const SizedBox(height: 31),
                  RichText(
                      text: const TextSpan(
                          text: 'Skills ',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff15C196),
                          ),
                          children: [
                            TextSpan(
                                text: ' and tools',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                ))
                          ])),
                  const  SizedBox(height: 30),
                  const Text("For more detailed overview, please feel free to \ncheck the tools that were used on a per - \nproject basis.",style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),),
                  const SizedBox(height: 45,),
                  const HubbiesWidget(
                    title:
                    "Reasonable and flexible prices \nfor clients",
                    icon: 'images/Wallet.png',
                    subTitle:
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Enim nunc consectetur \nmagnis orci at dis in leo consequat.",
                  ),
                  const SizedBox(height: 31),
                  const HubbiesWidget(
                    title:
                    "Reasonable and flexible prices \nfor clients",
                    icon: 'images/Headphone 2.png',
                    subTitle:
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Enim nunc consectetur \nmagnis orci at dis in leo consequat.",
                  ),
                  const SizedBox(height: 31),
                  const HubbiesWidget(
                    title:
                    "Reasonable and flexible prices \nfor clients",
                    icon: 'images/Setting.png',
                    subTitle:
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Enim nunc consectetur \nmagnis orci at dis in leo consequat.",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Image.asset(
              'images/group_projects.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 80)
        ],
      ),
    );
  }
}

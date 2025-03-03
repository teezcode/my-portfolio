import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/desktop_constrained_box.dart';

class DesktopMiddle extends StatelessWidget {
  const DesktopMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.2),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesktopConstrainedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(
                              text: 'Skills ',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff15C196),
                              ),
                              children: [
                            TextSpan(
                                text: ' and tools',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ))
                          ])),
                      const SizedBox(height: 44),
                      const Text(
                        "For more detailed overview, please feel free to \ncheck the tools that were used on a per - project basis.",
                        style:
                            TextStyle(fontSize: 24, color: Color(0xffA7A8AB)),
                      )
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                      child: Image.asset('images/stacks.png',
                          width: double.infinity))
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                  child: Image.asset(
                'images/group_projects.png',
                width: double.infinity,
                fit: BoxFit.cover,
              )),
              //const Spacer(),
              const SizedBox(width: 210),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: SizedBox(
                    width: double.infinity,
                    //color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HubbiesWidget(
                          title:
                              "Reasonable and flexible prices \nfor clients",
                          icon: 'images/wallet.png',
                          subTitle:
                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Enim nunc consectetur \nmagnis orci at dis in leo consequat.",
                        ),
                        SizedBox(height: 60),
                        HubbiesWidget(
                          title:
                              "Reasonable and flexible prices \nfor clients",
                          icon: 'images/Headphone 2.png',
                          subTitle:
                              "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Enim nunc consectetur \nmagnis orci at dis in leo consequat.",
                        ),
                        SizedBox(height: 60),
                        HubbiesWidget(
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
              )
            ],
          ),
          const SizedBox(height: 70)
        ],
      ),
    );
  }
}

class HubbiesWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  const HubbiesWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          scale: 3.0,
        ),
        const SizedBox(width: 51),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 30),
              Text(
                subTitle,
                style: const TextStyle(fontSize: 16, color: Color(0xff858282)),
              ),
            ],
          ),
        )
      ],
    );
  }
}

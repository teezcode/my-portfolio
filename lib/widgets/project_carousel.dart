import 'dart:async';
import 'package:flutter/material.dart';

class ProjectCarousel extends StatefulWidget {
  const ProjectCarousel({Key? key}) : super(key: key);

  @override
  State<ProjectCarousel> createState() => _ProjectCarouselState();
}

class _ProjectCarouselState extends State<ProjectCarousel> {
  final controller = PageController();
  Timer? timer;

  final projects = [
    ['images/Vemdot.png', 'images/EASY GO.png'],
    ['images/CLEAR WAGE.png', 'images/Day trit.png'],
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      timer?.cancel();
      if (projects.isNotEmpty) {
        cyclePage();
      }
    });
  }

  cyclePage() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (controller.page! >= (projects.length - 1)) {
        controller.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      } else {
        controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (204 + 204 + 7 + 30 + 24),
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                for (int i = 0; i < projects.length; i++)
                  Column(
                    children: [
                      Container(
                        height: 204,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(projects[i][0]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 7),
                      if (projects[i].length > 1)
                        Container(
                          height: 204,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(projects[i][1]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    ],
                  )
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 24,
            child: ListenableBuilder(
                listenable: controller,
                builder: (context, _) {
                  int? page;
                  if (mounted) {
                    page = controller.page?.round();
                  } else {
                    page = 0;
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < projects.length; i++)
                        i == page?.round()
                            ? Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                height: 24,
                                width: 24,
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              )
                            : Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                height: 24,
                                width: 24,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

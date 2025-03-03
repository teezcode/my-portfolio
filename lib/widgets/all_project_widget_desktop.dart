import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'desktop_constrained_box.dart';

class AllProjectWidgetDesktop extends StatefulWidget {
  const AllProjectWidgetDesktop({super.key});

  @override
  State<AllProjectWidgetDesktop> createState() =>
      _AllProjectWidgetDesktopState();
}

class _AllProjectWidgetDesktopState extends State<AllProjectWidgetDesktop> {
  final controller = PageController();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      timer?.cancel();
      if (pages.isNotEmpty) {
        cyclePage();
      }
    });
  }

  final List<Map<String, String>> pages = [
    {
      'title': 'EasyGo',
      'content':
          'EasyGo App is a convenient and secure mobile platform designed to simplify financial transactions. With EasyGo, users can effortlessly manage their payments, including handling various bill payments (utilities, subscriptions, etc.), making fast and reliable wallet-to-wallet transfers, and processing secure payment transactions. Whether you need to pay bills on time or send money to friends and family, EasyGo ensures a seamless, user-friendly experience while keeping your funds safe',
      'android_link': 'https://play.google.com/store/apps/details?id=coolapp1',
      'ios_link': 'https://apps.apple.com/us/app/cool-app-1/id1234567890',
      'image': 'images/EASY GO.png',
    },
    {
      'title': 'Vemdot',
      'content':
          ' VemDot App is a versatile food delivery platform that connects users with a wide range of local vendors, offering a seamless way to order food from their favorite restaurants and eateries. With VemDot, users can browse through a variety of food options, place orders, and have meals delivered right to their doorstep. The app ensures a smooth ordering process with real-time tracking, secure payments, and personalized recommendations, making it easier than ever to enjoy delicious food from different vendors, all in one convenient app.',
      'android_link': 'https://play.google.com/store/apps/details?id=coolapp2',
      'ios_link': 'https://apps.apple.com/us/app/cool-app-2/id1234567891',
      'image': 'images/Vemdot.png',
    },
    {
      'title': 'DayTrit',
      'content':
          'DayTrit App is a user-friendly platform that makes booking flights for your next getaway easy and hassle-free. Whether you\'re planning a relaxing vacation or a spontaneous trip, DayTrit helps you find and book flights to the destination of your choice. With an intuitive interface, flexible search options, and personalized travel recommendations, DayTrit ensures that users can effortlessly plan their perfect escape, from browsing flight deals to finalizing their bookings, all in one convenient app.',
      'android_link': 'https://play.google.com/store/apps/details?id=coolapp2',
      'ios_link': 'https://apps.apple.com/us/app/cool-app-2/id1234567891',
      'image': 'images/Day trit.png',
    },
    {
      'title': 'ClearWage',
      'content':
          ' ClearWage App is an innovative employee management platform recently launched in the UK, designed to streamline and simplify all aspects of workforce management. From tracking employee attendance, managing payroll, and handling leave requests to providing performance insights, ClearWage offers businesses a comprehensive solution for efficiently managing their teams. With a user-friendly interface and powerful features, the app ensures smooth operations, helping employers stay organized and employees stay informed. ClearWage is the all-in-one tool to elevate employee management for businesses of all sizes',
      'android_link': 'https://play.google.com/store/apps/details?id=coolapp2',
      'ios_link': 'https://apps.apple.com/us/app/cool-app-2/id1234567891',
      'image': 'images/CLEAR WAGE.png',
    },
  ];

  cyclePage() {
    timer = Timer.periodic(const Duration(seconds: 7), (timer) {
      if (controller.page! >= (pages.length - 1)) {
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

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      //itemCount: pages.length,
      onPageChanged: (value) => setState(() => currentPage = value),
      controller: controller,
      children: [
        for (int i = 0; i < pages.length; i++)
          DesktopConstrainedBox(
            rightConstraint: true,
            leftConstraint: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pages[i]['title'] ?? "--",
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 45),
                              Text(
                                pages[i]['content'] ?? "--",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                maxLines: null,
                              ),
                              const SizedBox(height: 50),
                              Row(
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      _launchURL(pages[i]['android_link']!);
                                    },
                                    icon: const Icon(Icons.android),
                                    label: const Text('Android Link'),
                                  ),
                                  const SizedBox(width: 10),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      _launchURL(pages[i]['ios_link']!);
                                    },
                                    icon: const Icon(Icons.apple),
                                    label: const Text('iOS Link'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Image.asset(
                            pages[i]['image']!,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 70),
                          SizedBox(
                            height: 24,
                            child: ListenableBuilder(
                                listenable: controller,
                                builder: (context, _) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      for (int i = 0; i < pages.length; i++)
                                        i == currentPage
                                            ? Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                height: 24,
                                                width: 24,
                                                decoration: const BoxDecoration(
                                                  color: Colors.green,
                                                  shape: BoxShape.circle,
                                                ),
                                              )
                                            : Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
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
                    ],
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}

void _launchURL(String url) async {
  // Use the `url_launcher` package to open the link
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

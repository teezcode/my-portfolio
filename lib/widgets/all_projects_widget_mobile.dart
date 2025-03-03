import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AllProjectsWidgetMobile extends StatefulWidget {
  const AllProjectsWidgetMobile({super.key});

  @override
  State<AllProjectsWidgetMobile> createState() => _AllProjectsWidgetMobileState();
}

class _AllProjectsWidgetMobileState extends State<AllProjectsWidgetMobile> {

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


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 51),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: pages.length,
          itemBuilder: (context,index){
            final page = pages[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  page['title'] ?? "--",
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  page['content'] ?? "--",
                  style: const TextStyle(
                      fontSize: 17, color: Colors.white),
                  maxLines: null,
                ),
                const SizedBox(height: 5),
                Image.asset(
                  page['image']!,
                  height: 300,
                  //fit: BoxFit.cover,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        _launchURL(page['android_link']!);
                      },
                      icon: const Icon(Icons.android),
                      label: const Text('Android Link'),
                    ),
                    const SizedBox(width: 5),
                    ElevatedButton.icon(
                      onPressed: () {
                        _launchURL(page['ios_link']!);
                      },
                      icon: const Icon(Icons.apple),
                      label: const Text('iOS Link'),
                    ),
                  ],
                ),
              ],
            );
          },
      ),
    ),);
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
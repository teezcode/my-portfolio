import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_carousel.dart';

import '../screens/all_project_page_desktop.dart';

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;
    //final screenHeight =screenSize.width;

    return Container(
      color: const Color(0xff129477).withOpacity(0.1),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 51),
        child: Column(
          children: [
            const Text(
              "Take a look at \nwhat i have built",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            const SizedBox(height: 21),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AllProjectPageDesktop()));
              },
              child: Container(
                width: screenWidth * 0.5,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff15C196), width: 2),
                ),
                height: 76,
                child: const Center(
                  child: Text(
                    'View all projects',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 41),
            const ProjectCarousel(),
          ],
        ),
      ),
    );
  }
}

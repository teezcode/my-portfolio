import 'package:flutter/material.dart';

import '../screens/all_project_page_desktop.dart';
import 'all_project_widget_tabb.dart';

class TabProjects extends StatelessWidget {
  const TabProjects({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> products = [
      'images/Vemdot.png',
      'images/EASY GO.png',
      'images/CLEAR WAGE.png',
      'images/Day trit.png',
    ];

    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;

    return  Container(
      width: double.infinity,
      color: const Color(0xff129477).withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 84.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Take a look at \nwhat i have built",style: TextStyle(
                            fontSize: 36,
                            color: Colors.white
                        ),),
                        const SizedBox(height: 40),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AllProjectPageDesktop()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff15C196),width: 2)
                            ),
                            width: screenWidth * 0.3,
                            height: 76,
                            child: const Center(
                              child: Text('View all projects',
                                //textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 64),
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: products.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 2.0, // Space between columns
                        mainAxisSpacing: 2.0, // Reduced space between rows (top and bottom)
                        childAspectRatio: 1.5, // Adjust the aspect ratio (width / height) to bring items closer
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(products[index],fit: BoxFit.cover,);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

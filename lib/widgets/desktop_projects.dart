import 'package:flutter/material.dart';

import '../screens/all_project_page_desktop.dart';

class DesktopProjects extends StatelessWidget {
  const DesktopProjects({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> products = [
      'images/Vemdot.png',
      'images/EASY GO.png',
      'images/CLEAR WAGE.png',
      'images/Day trit.png',
    ];

    return Container(
      width: double.infinity,
      color: const Color(0xff129477).withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 168.0),
                    child: Column(
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
                            width: 356,
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
                  const SizedBox(width: 88),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: products.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 1.0, // Space between columns
                          mainAxisSpacing: 1.0, // Reduced space between rows (top and bottom)
                          childAspectRatio: 1.6, // Adjust the aspect ratio (width / height) to bring items closer
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(products[index],fit: BoxFit.cover,);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

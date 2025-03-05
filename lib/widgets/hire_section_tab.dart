import 'package:flutter/material.dart';

import 'custom_textfield.dart';


class HireSectionTab extends StatelessWidget {
  const HireSectionTab({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;

    return Container(
      //color: const Color(0xff090E18),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 90),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Lets get in touch \nreal quick yeah ',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),
            ),
            const Spacer(),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child:  SizedBox(
                  height: 400, // Set a fixed height
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Expanded(child: CustomTextField(hintText: 'Name', borderRadius: 5)),
                          SizedBox(width: 10),
                          Expanded(child: CustomTextField(hintText: 'Email', borderRadius: 5)),
                        ],
                      ),
                      SizedBox(height: 15),
                      Expanded(child: CustomTextField(hintText: 'Message', borderRadius: 5,maxLines: 10,)),
                      SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff15C196),width: 2)
                        ),
                        width: screenWidth * 0.18,
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

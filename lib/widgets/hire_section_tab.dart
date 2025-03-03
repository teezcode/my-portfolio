import 'package:flutter/material.dart';


class HireSectionTab extends StatelessWidget {
  const HireSectionTab({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;

    return Container(
      color: const Color(0xff090E18),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 90),
        child: Row(
          children: [
            const Text('Lets talk about your project',style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),
            ),
            const Spacer(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff15C196),width: 2)
                ),
                width: double.infinity,
                height: 76,
                child: const Center(
                  child: Text('Hire me',
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
    );
  }
}

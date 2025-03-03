import 'package:flutter/material.dart';

class HireSectionDesktop extends StatelessWidget {
  const HireSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth =screenSize.width;

    return Container(
      color: const Color(0xff090E18),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120.0,vertical: 114),
        child: Row(
          children: [
            const Expanded(
              child: Text('Lets talk about \nyour project',style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 300.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff15C196),width: 2)
                ),
                width: screenWidth * 0.2,
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

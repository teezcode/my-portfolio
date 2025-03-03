import 'package:flutter/material.dart';

class HireSectionMobile extends StatelessWidget {
  const HireSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color(0xff090E18),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Lets talk about your project',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),
            ),
            const SizedBox(height: 30,),
            Container(
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_textfield.dart';

class HireSectionMobile extends StatelessWidget {
  const HireSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      //color: const Color(0xff090E18),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Lets get in touch \nreal quick yeah',style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),
            ),
            const SizedBox(height: 30,),
            CustomTextField(hintText: 'Name', borderRadius: 5,),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Email', borderRadius: 5,),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Message', borderRadius: 5,maxLines: 5,),
            SizedBox(height:40),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff15C196),width: 2)
              ),
              width: double.infinity,
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
    );
  }
}

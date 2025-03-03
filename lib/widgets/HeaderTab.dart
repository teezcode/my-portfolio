
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:my_portfolio/widgets/tab_constrained_box.dart';

import '../constants/nav_item.dart';


class HeaderTab extends StatelessWidget {
  const HeaderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabConstrainedBox(
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xff1A293F).withOpacity(0.2),
        ),
        child: Row(
          children: [
            SiteLogo(onTap: (){},),
            const Spacer(),
            for(int i=0; i < navTitles.length; i++)
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(onPressed: (){}, child: Text(navTitles[i],style: const TextStyle(fontSize: 16,color: Colors.white),)),
              ),
            //const SizedBox(width: 69),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff15C196),width: 2)
              ),
              width: 116,
              height: 47,
              child: const Center(
                child: Text('Resume',
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff15C196),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

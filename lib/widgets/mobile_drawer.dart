import 'package:flutter/material.dart';

import '../constants/nav_item.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff090E18),
      child:Container(
        decoration: const BoxDecoration(
          //color: const Color(0xff1A293F).withOpacity(0.2),
            image: DecorationImage(
                image: AssetImage('images/BG.png'),fit: BoxFit.cover
            )
        ),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 20,),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.close_outlined,color: Colors.white,)),
              ),
            ),
            for(int i = 0; i < navIcon.length; i++)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                onTap: (){},
                leading: Icon(navIcon[i],color: Colors.white,),
                title: Text(navTitles[i],style: const TextStyle(color: Colors.white),),
              ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff15C196),width: 2)
                ),
                width: double.infinity,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onMenuTap;
  final VoidCallback? onLogoTap;
  const HeaderMobile({super.key, this.onMenuTap, this.onLogoTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1A293F).withOpacity(0.2),
      ),
      height: 50,
      width: double.infinity,
      //margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
        child: Row(
          children: [
            SiteLogo(onTap: onLogoTap,),
            const Spacer(),
            IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu,color: Colors.white,))
          ],
        ),
      ),
    );
  }
}

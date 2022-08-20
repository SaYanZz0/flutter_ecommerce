import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: getProportionateScreenWidth(135),
        height: getProportionateScreenWidth(135),
        decoration: BoxDecoration(
            shape: BoxShape.circle
        ),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Container(
              child: Image.asset('assets/images/Profile Image.png' ,fit: BoxFit.fill,),
            ),
            Positioned(
                bottom: 0,
                right: -12,
                child:InkWell(
                  onTap: (){},
                  child: Container(
                    width: getProportionateScreenWidth(46),
                    height: getProportionateScreenWidth(46),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:Color(0xFFF5F6F9)
                    ),
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

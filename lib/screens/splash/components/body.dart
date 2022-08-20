import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import '../../../Components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:shop_app/screens/splash/components/splash_content.dart';



class Body extends StatefulWidget {
   Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
   int currentpage = 0;
   var SplashData = [
  {
    'text':' Welcome To ACHRILI \nWhere you can buy Anything!',
    'image':'assets/images/splash1.png'
  },
  {
    'text':'We Help People to make Shopping \nall around all The World!',
    'image':'assets/images/splash2.png'
  },
  {
    'text':'We Show The Easy Way to Shop.\nJust Stay At Home with Us!',
    'image':'assets/images/splash3.png'
  }
];

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
          flex: 4,
          child:PageView.builder(
            onPageChanged: (value) {
              setState((){
                currentpage = value;
              });
            },
            itemCount: SplashData.length,
                itemBuilder:(context , index){
                   return
                     SplashContent(
                       image: SplashData[index]['image'],
                       text: SplashData[index]['text'],
                     );
                }
                ),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children:<Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children:
                        List.generate(SplashData.length, (index) => BuildDot(index: index))
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                      child: DefaultButton(width: double.infinity,text: 'Continue', press:(){Get.toNamed(RoutesClass.getSignInRoute());}),
                    ),
                    Spacer(flex: 2,),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

Widget BuildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
                    height:6 ,
                    width: index == currentpage? 20 : 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: index == currentpage ?kPrimaryColor : Colors.grey
                    ),
                  );
  }
}
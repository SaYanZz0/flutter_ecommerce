import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialBrandsForYou extends StatelessWidget {
  SpecialBrandsForYou({
    Key? key,
  }) : super(key: key);
  List<Map<String , dynamic>> specialcategories = [
    {'image':'assets/images/android-iphone-1-1200x578.jpg' , 'title':'Smartphone' , 'number':18},
    {'image':'assets/images/techinfashion_shopping_5.jpg' , 'title':'Fashion' , 'number':24},
    {'image':'assets/images/istockphoto-1147086081-170667a.jpg' ,'title':'Furniture' , 'number':15 }
  ];
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: getProportionateScreenHeight(100),
        width:double.infinity ,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: specialcategories.length,
          itemBuilder:(BuildContext context , int index){
            return Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
              child: SizedBox(
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenWidth(200),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(100),
                        width: getProportionateScreenWidth(200),
                        child:Image.asset(specialcategories[index]['image'] , fit: BoxFit.fill,),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors:[
                                  Colors.black26,
                                  Colors.black26
                                ]
                            )
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15), vertical:getProportionateScreenWidth(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(specialcategories[index]['title'] , style: TextStyle(color: Colors.white , fontSize: getProportionateScreenWidth(18) , fontWeight: FontWeight.bold),),
                              Text("${specialcategories[index]['number']}" + ' brands' , style: TextStyle(color: Colors.white ),)
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),
            );
          } ,
        ),
      );
  }
}
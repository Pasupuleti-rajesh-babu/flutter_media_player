import 'package:flutter/material.dart';
import 'package:media/core/const.dart';
import 'package:media/widgets/custom_button_widget.dart';
class CustomButtonWidget extends StatelessWidget {
  final Widget Child;
  final double size;
  final String image;
  final double borderWidth;
  final bool isActive;

  CustomButtonWidget({
    this.Child ,
    @ required this.size ,
    this.image,
    this.borderWidth =  2,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    var boxDecoration =  BoxDecoration(
        borderRadius: BorderRadius.all(
        Radius.circular(200),
    ),
    border: Border.all(
    width:borderWidth,
    color: AppColors.mainColor,
    ),
    boxShadow: [
    BoxShadow(
    color: AppColors.lightBlueShadow,
    blurRadius: 10,
    offset: Offset(5,5),
    spreadRadius: 3,
    ),
    BoxShadow(
    color: Colors.white,
    blurRadius: 5,
    offset: Offset(-5,-5),
    spreadRadius: 3,
    )
    ],
    gradient: RadialGradient(
    colors: [
    AppColors.mainColor,
    AppColors.mainColor,
    AppColors.mainColor,
    Colors.white,
    ]
    ),
    );
     if (image !=null) {
       boxDecoration = boxDecoration.copyWith(image: DecorationImage(image: ExactAssetImage(image),fit: BoxFit.cover
       ),
       );
     }

    return Container(
        width: size,
        height: size,
        decoration: boxDecoration,
    child: Child ?? Container(),//FlatButton(onPressed: () {},
    );
  }
}

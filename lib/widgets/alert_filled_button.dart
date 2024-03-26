import 'package:flutter/material.dart';
import 'package:challenge2mc/const/colors.dart';

class AlertFilledButton extends StatelessWidget {
  const AlertFilledButton({
    super.key,
    required this.text,
    required this.one,
  });

  final String text;
  final bool one;

  @override
  Widget build(BuildContext context) {

    double h, w;

    if (one == false){
      h = 30;
      w = 100;
    }
    else{
      h = 50;
      w = 170;
    }
    return SizedBox(
      height: h,
      width: w,
      child: FilledButton(
          
        style: FilledButton.styleFrom(
          backgroundColor: violet,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
          
        ),
        onPressed: (){
          Navigator.of(context).pop();
        },
          
        child:  Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500
          ),
          )
        ),
    );
  }
}

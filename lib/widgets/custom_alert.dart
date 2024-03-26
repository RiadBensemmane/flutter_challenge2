import 'package:flutter/material.dart';
import 'package:challenge2mc/widgets/alert_filled_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.text1,
    this.text2,
  });

  final String title;
  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry p;
    if (text2 == null){
        p = const EdgeInsets.only(left: 60, right: 60, bottom: 27);
    }
    else{
        p = const EdgeInsets.only(left: 35, right: 35, bottom: 60);
    }
    return SizedBox(
      height: 300,
      width: 300,
      child: AlertDialog(
        insetPadding: const EdgeInsets.all(30),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("images/bird.png"),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                  )
            ],
          ),
        ),
        actions: text2 != null
            ? [
                Padding(
                  padding: p,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AlertFilledButton(text: text1, one: false,),
                      AlertFilledButton(text: text2!, one: false,),
                    ],
                  ),
                ),
              ]
            : [
                Padding(
                  padding: p,
                  child: Center(child: AlertFilledButton(text: text1, one: true,)),
                ),
              ],
      
      ),
    );
  }
}


import "package:flutter/material.dart";
import "package:challenge2mc/const/colors.dart";
import "package:flutter_svg/flutter_svg.dart";
import 'package:date_field/date_field.dart';
import 'package:challenge2mc/widgets/custom_alert.dart';

class AddEventPage extends StatelessWidget {
  const AddEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset("images/bird.png")
            )
        ],
      leading: Container(
        alignment: Alignment.center,
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.white,
         
          ),
          child: SvgPicture.asset("images/back.svg", colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      ),
      body: const FormBody(),
    );
  }
}

class FormBody extends StatelessWidget {
  const FormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 17, top: 25),
          child:  Text(
            "Event name", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 25, right: 16, left: 16),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              fillColor: const Color.fromARGB(255, 247, 247, 247),
              filled: true,
              hintText: "input",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 17, top: 25),
          child:  Text(
            "Desc", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 25, right: 16, left: 16),
          child: TextField(
            
            cursorColor: Colors.black,
            decoration: InputDecoration(
              
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              fillColor: const Color.fromARGB(255, 247, 247, 247),
              filled: true,
              hintText: "input",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 17, top: 25),
          child:  Text(
            "Time range", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          
          ),
        ),   

        Padding(
          padding: const EdgeInsets.all(17.0),
          child:  Row(
            children: [
              Column(
                children: [
                 const  Text(
                    "from",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Date",
                      suffixIcon: SvgPicture.asset("images/calendar.svg"),
                    ),
                  )
                ],
              ),

            ],
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.only(left:130, right: 130),
          child: Center(
            
            child: FilledButton(onPressed: (){
              showDialog(context: context, builder: (context) => const CustomAlertDialog(title:"Event added successfully !", text1: "Done"));
          },
          style: FilledButton.styleFrom(
            backgroundColor: violet,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("images/add.svg", colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn), width: 15, height: 15,)
                  ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Add", style: TextStyle(fontSize: 14),),
                )
              ],
          ),
          ),
          ),
        )
      ],
    );
  }
}
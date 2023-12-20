import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
     required this.btnName,
      this.icon,
      this.bgColor = Colors.orange,
      this.textStyle,
      this.callback
  });

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(onPressed: (){
       callback!();
   }, child: icon!= null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
     children: [
       icon!,
       Container(
         height: 11,
       ),
       Text(btnName,style: textStyle,)
     ],

   )
       : Text(btnName,style: textStyle,
   ),
       style: ElevatedButton.styleFrom(
       shadowColor: bgColor,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(11.0)
         )
   ),
   );
  }


}
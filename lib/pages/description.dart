import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cart_list/color.dart' as color;
import 'item_list.dart';

class description extends StatefulWidget {
  const description({Key? key}) : super(key: key);

  @override
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description> {

  @override
  Widget build(BuildContext context) {
    final choices = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
           body: SafeArea(
<<<<<<< HEAD
             child: Column(
               children:[Row(
                 children: [
                 IconButton(
                 onPressed:(){
                   Navigator.pop(context);} ,
                 icon: Icon(
                 Icons.arrow_back_rounded,
                 color: color.AppColor.onPress,
    ),
               ),
               Text(choices.title,
               style: TextStyle(
                fontSize: 20,
                color: color.AppColor.onPress,
                fontWeight: FontWeight.bold,
                ),),
             ],
           ),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 40),
                   child:  Image(
                     image: AssetImage(choices.images
                     ),

                   ),
                 ),
                 Text(choices.title,
                  style: TextStyle(
                  fontSize: 30,
                  color: color.AppColor.title,
                  fontWeight: FontWeight.bold,
               ),),
                 SizedBox(height: 20,),
                 Padding
                     (
                   padding: const EdgeInsets.all(40.0),
                   child: Container(
                     width: MediaQuery.of(context).size.width-60,
                     height: MediaQuery.of(context).size.height/5,
                     color: color.AppColor.subtitleBg,
                     child:Center(


                     child: Text(choices.description,
                       style: TextStyle(
                         fontSize: 20,
                         color: color.AppColor.subtitle,
                         fontWeight: FontWeight.bold,
                       ),
                     textAlign: TextAlign.left,),
                   ),),
                 ),
=======
             child: SingleChildScrollView(
               child: Column(
                 children:[Row(
                   children: [
                   IconButton(
                   onPressed:(){
                     Navigator.pop(context);} ,
                   icon: Icon(
                   Icons.arrow_back_rounded,
                   color: color.AppColor.onPress,
    ),
                 ),
                 Text(choices.title,
                 style: TextStyle(
                  fontSize: 20,
                  color: color.AppColor.onPress,
                  fontWeight: FontWeight.bold,
                  ),),
               ],
           ),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 40),
                     child:  Image(
                       image: AssetImage(choices.images
                       ),

                     ),
                   ),
                   Text(choices.title,
                    style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.title,
                    fontWeight: FontWeight.bold,
                 ),),

                   Padding
                       (
                     padding: const EdgeInsets.all(20.0),
                     child: Container(
                       width: MediaQuery.of(context).size.width-60,
                       margin: const EdgeInsets.all(2.0),
                       color: color.AppColor.subtitleBg,
                       child:Center(


                       child: Text(choices.longDes,
                         style: TextStyle(
                           fontSize: 20,
                           color: color.AppColor.subtitle,
                           fontWeight: FontWeight.bold,
                         ),
                       textAlign: TextAlign.left,),
                     ),),
                   ),
                   Container(
                     height: 60,
                     padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                     width : 364,
                     child: ElevatedButton(
                           onPressed: () => _showToast(context),

                       style: ElevatedButton.styleFrom(
                         primary: color.AppColor.appbar,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
                         ),
                       ),

                       child: Text("Add to cart",
                         style: TextStyle(
                           fontSize: 25,
                           fontFamily: "Roboto",

                           color: color.AppColor.buttonFont,
                         ),
                       ),

                     ),
                   ),
                   Container(
                     height: 60,
                     padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                     width : 364,
                     child: ElevatedButton(
                       onPressed: () {


                       },
                       style: ElevatedButton.styleFrom(
                         primary: color.AppColor.appbar,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
                         ),
                       ),

                       child: Text("Buy Now",
                         style: TextStyle(
                           fontSize: 25,
                           fontFamily: "Roboto",

                           color: color.AppColor.buttonFont,
                         ),
                       ),

                     ),
                   ),
>>>>>>> 28aec60 (buttons added)



      ],
<<<<<<< HEAD
           ),),
    );
  }
}
=======
           ),
             ),),
    );
  }
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to Cart'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

>>>>>>> 28aec60 (buttons added)

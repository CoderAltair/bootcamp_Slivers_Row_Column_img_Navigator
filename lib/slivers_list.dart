import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:slivers_row_column_images_navigation/second_list.dart';

class Slivers extends StatefulWidget {
  const Slivers({Key? key}) : super(key: key);
  @override
  _SliversState createState() => _SliversState();
}
class _SliversState extends State<Slivers> {
  Widget card(String img,String name){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.8,
        height: 200.0,
        decoration:BoxDecoration(
          color: Colors.red,
          boxShadow:const[BoxShadow( 
            offset: Offset(0,3),
            spreadRadius: 5.0,
            blurRadius: 7.0,
            color: Colors.grey,
          )],       
          borderRadius:BorderRadius.circular(30.0),
          image: DecorationImage(image: AssetImage(img),fit: BoxFit.cover
        ),
      ),
      child: InkWell(
        onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (_)=>Navigating(images:img,)) ),
        child: Center(
          child: Text(name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            ),),
        ),
      ),),
    );
  }
  @override
  
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text('SliverAppBar'),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background:  Image.network(
                        "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                        fit: BoxFit.cover,
                      ),
            ),
            ),
          SliverFillRemaining(
            hasScrollBody: false,
            child:Column(
              children: [
                card('images/img1.jpg', "First Img"),
                card('images/img2.jpg', "Second Img"),
                card('images/img3.jpg', "Third Img"),
                card('images/img4.jpg', "Four Img"),
                card('images/img1.jpg', "Five Img"),
                card('images/img2.jpg', "Six Img"),
              ],
            )
          )
        ],
      ),
    );
  }
}
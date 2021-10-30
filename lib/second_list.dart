import 'package:flutter/material.dart';
class Navigating extends StatelessWidget {
  String images;
  Navigating({Key? key, required this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:20.0),
            child: Container(
              height:200.0,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration( 
                 boxShadow:const[BoxShadow( 
              offset: Offset(0,3),
              spreadRadius: 5.0,
              blurRadius: 7.0,
              color: Colors.grey,
            )],
            borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                image: AssetImage(images),
                fit:BoxFit.cover)),
            ),
          ),  
           Container(
            child:const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry` s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',style: TextStyle(color: Colors.black),),
          ),
        ],
      ) ,
    );
  }
}
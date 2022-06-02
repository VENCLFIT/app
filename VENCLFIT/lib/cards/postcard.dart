import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {

  List<String> imageList = [
    'https://static.wixstatic.com/media/226cef_f019576f4c434653a29530ed6fcdcc8b~mv2.jpg/v1/fill/w_280,h_376,q_90/226cef_f019576f4c434653a29530ed6fcdcc8b~mv2.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7qquABJpDz4qcNwLqtlN4OgoxcJRShv-qiA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROocygWV-NK-hL38HxFmW2-99JUHCvb0cvog&usqp=CAU'
  ];

  List<String> profileList = [
    'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD-0O2XNDodgpqsU-eiPJ9Vaza9QtzPuBYx1kjnA4zEZyRFBAuWR_jo_L0rOeVY2uPPhI&usqp=CAU'
  ];


  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD-0O2XNDodgpqsU-eiPJ9Vaza9QtzPuBYx1kjnA4zEZyRFBAuWR_jo_L0rOeVY2uPPhI&usqp=CAU'),
                    ),
                    SizedBox(width: 5,),
                    Text('heejin')
                  ],
                ),
                Icon(Icons.subject),
              ],
            )
          ),
          Container(
            child: Image.network(imageList[Random().nextInt(3)]),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 7,),
                    Icon(Icons.chat_outlined),
                    SizedBox(width: 7,),
                    Icon(Icons.send)
                  ],
                ),
                Container(width: 60, child: Text('indic'),),
                Icon(Icons.bookmark_border)
              ],
            ),
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("안녕하세요. 희진입니다.")
                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
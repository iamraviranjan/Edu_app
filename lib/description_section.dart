import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
          'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
          ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
          'It has survived not only five centuries, but also the leap into electronic typesetting,'
          ' remaining essentially unchanged',
        style:TextStyle( fontSize: 16, color:Colors.black.withOpacity(0.7)),
      textAlign: TextAlign.justify,
      ),
SizedBox(height: 20,),
      Row(
        children: [
          Text('Course Length', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 5,),
          Spacer(),
          Icon(
              Icons.timer,
          color: Color(0xFF836DE3),
          ),
          SizedBox(width: 5,),
          Text('26 Hours', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Text('Rating', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 5,),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          SizedBox(width: 5,),
          Text('4.5', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ],
  );
  }
}

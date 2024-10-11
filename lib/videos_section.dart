import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {
  
  List videosList = [
    'introduction to Flutter',
    'Installing Flutter on Windows',
    'setup Emulator on Windows',
    'Creating our First App'
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videosList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ListTile(
            leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? Color(0xFF563EE6)
                  : Color(0xFF836DE3).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
              child: Icon(Icons.play_arrow_rounded,
              color: Colors.white, size: 30,),
            ),
            title: Text(videosList[index]),
            subtitle: Text('20 min 50 sec'),
          );
        },


    );
  }
}

import 'package:edu_app/course_screeen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  // create static data in lists.
  List catNames = [
    "category",
    "Classes",
    "Free Course",
    "BookStore",
    "Live Course",
    "LeaderBoard",
  ];

List<Color> catcolors = [
  Color(0xFFffCF2F),
  Color(0xff86d18f),
  Color(0xff3db1e8),
  Color(0xfff4770b),
  Color(0xffb571e3),
  Color(0xff75e15b),
];

List<Icon> catIcons = [
  Icon(Icons.category,color: Colors.white,size: 30,),
  Icon(Icons.video_library,color: Colors.white,size: 30,),
  Icon(Icons.assignment,color: Colors.white,size: 30,),
  Icon(Icons.store,color: Colors.white,size: 30,),
  Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
  Icon(Icons.emoji_events,color: Colors.white,size: 30,),
];

List imgList = [
  'Flutter',
  'React Native',
  'Python',
  'C#',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Container(
          padding: EdgeInsets.only(top:15 , left: 15, right: 15,bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xFF674AEF),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.dashboard,size: 30,color: Colors.white,),
                  Icon(Icons.notifications,size: 30,color: Colors.white,),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text('Hi Pogrammer', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,color: Colors.white),),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search here...',
                    helperStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    prefixIcon: Icon(Icons.search,size: 25,)
                  ),
                ),
              ),
            ],
          ),
        ),

          Padding(padding: EdgeInsets.only(top:20,left: 15,right: 15 ),
          child: Column(
            children: [
              GridView.builder(
                itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1,
              ),
                itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catcolors[index],
                            shape: BoxShape.circle
                          ),
                          child: Center(child: catIcons[index],),
                        ),
                        SizedBox(height: 10,),
                        Text(catNames[index],
                        style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.6),),),
                      ],
                    );
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Courses', style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                  Text('See All', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xFF8D76EC),),),
                ],
              ),
              SizedBox(height: 10,),
              GridView.builder(
                itemCount: imgList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 -25) / (4 * 240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> CourseScreeen(imgList[index]),
                        ),
                        );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF5F3FF),
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(10),
                          child: Image.asset("images/${imgList[index]}.png",
                              height: 90,
                            width: 100,
                          ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            imgList[index],
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("55 videos", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5),
                          ),),
                        ],
                      ),
                    ),
                  );
              },
              ),
            ],
          ),
          ),
        ],
      ),
bottomNavigationBar: BottomNavigationBar(
  showUnselectedLabels: true,
  iconSize: 32,
  selectedFontSize: 18,
  unselectedItemColor: Colors.grey,
  selectedItemColor: Color(0xFf674AEF),
  items: [BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
   BottomNavigationBarItem(icon: Icon(Icons.assignment), label:'courses'),
   BottomNavigationBarItem(icon: Icon(Icons.favorite), label:'wishlist'),
  BottomNavigationBarItem(icon: Icon(Icons.person), label:'Account'),

  ],
),



    );
  }
}

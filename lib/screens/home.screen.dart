import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //creating static data in lists

  List catNames = [
    "Category",
    'listen now',
    'Note Reminder',
    'Medivative',
    'Practises',
    'LeaderBoard',
  ];

  List<Color> catColors = [
    Color(0xff219653),
    Color(0xff219653),
    Color(0xff219653),
    Color(0xff219653),
    Color(0xff219653),
    Color(0xff219653)

  ];

  List<Icon> catIcons = [
    Icon(Icons.category, color: Colors.white, size: 30,),
    Icon(Icons.video_library, color: Colors.white, size: 30,),
    Icon(Icons.assignment, color: Colors.white, size: 30,),
    Icon(Icons.store, color: Colors.white, size: 30,),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30,),
    Icon(Icons.emoji_events, color: Colors.white, size: 30,),
    
  ];

  List imgList = [
    'Midnight & relaxation'
    'Jogging & cycling'
    'Focused & Mindfulness'
    'Panick Attack'
    'Empathy & Kindness'


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
          decoration: BoxDecoration(
              color: Color(0xff0B483E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.dashboard,
                    size: 30,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3, bottom: 15),
                child: Text(
                  "How are you feeling today ?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffFEC265),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here ...",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(children: [
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
                          color: catColors[index],
                          shape: BoxShape.circle
                        ),
                        child: Center(child: catIcons[index],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: TextStyle(
                        fontSize : 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.7),
                        ),
                      )
                    ],
                  );
                }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Most Popular",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                    ),
                     Text("See All",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff219653),
                    ),
                    ),
                ],
                ),
                SizedBox(height: 10,),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (MediaQuery.of(context).size.height -50 -20 ) / (4*240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                ),
                
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10 ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff147564),
                    ),
                    child: Column(
                      children: [
                        Padding(padding
                        : EdgeInsets.all(10),
                        child: Image.asset("images/${imgList[index]}.png",width: 100, height: 100,),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          imgList[index],
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(0.6),
                            
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("55 videos", style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.5),
                        ),)
                      ],
                    )
                  ),
                  );
                } ,
                ),
          ],
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                      ),
                      child: Column(
                        children: [
                          ClipOval(child:Image.network("https://th.bing.com/th/id/OIP.E4pqV9Hsj-U6WNsJFMrzbQHaHa?rs=1&pid=ImgDetMain")),
                          SizedBox(height: 20,),
                          Text('Anna', style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    //data of the user

                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.venus, color: Colors.pink,),
                              Text('female'),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.locationPin, color: Colors.red[800],),
                              Text('Philippines'),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.at, color: Colors.yellow[800],),
                              Text('anna@gmail.com.ph.gov'),
                            ],
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.user, color: Colors.green[800],),
                              Text('@anna'),
                            ],
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.calendar, color: Colors.blue[800],),
                              Text('11'),
                            ],
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.mobile, color: Colors.purple[800],),
                              Text('09471026008'),
                            ],
                          ),
                        ],
                      ),
                    )


                  ],
                )
              ],
            ),
        ),
    );
  }
}

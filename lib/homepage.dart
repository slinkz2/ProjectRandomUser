import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RANDOM_API.dart';
import 'package:project_random_user/Model/RandomUser.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
String? name = 'Lorem Ipsum';
String? gender = 'female';
String? country = 'Philippines';
String? email = 'anna@gmail.com.ph.gov';
String? age = '11';
String? phoneNumber = '09471026008';
String? username = '@anna';
String? profile;
class _HomepageState extends State<Homepage> {
  Future<void> getData() async{
    final response = await http.get(
        Uri.parse(url)
    );
    setState(() {
      user = [jsonDecode(response.body)];
    });

    // example on how you can get data in random user api
    //1st declare a variable find in /Model/RandomUser
    //2nd to assign that variable a data call the Class RandomUser()
    //e.x you want to get a name in the data declare a variable name which this variable is already initialized in the /Model/RandomUser
    //next to get a name in the json data call RandomUser.getName(IN THIS PARAMETER YOU PUT 'user' which is in the setState above)
    //now if you want to get age just call RandomUser.getAge() different func can be found in /Model/RandomUser
    name = RandomUser.getName(user);
    age = RandomUser.getAge(user);
    gender = RandomUser.getGender(user);
    country = RandomUser.getCountry(user);
    email=RandomUser.getEmail(user);
    phoneNumber = RandomUser.getPhoneNumber(user);
    username = RandomUser.getUsername(user);
    profile=RandomUser.getProfile(user);
    print(name);
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E7E7),
      body: RefreshIndicator(
        onRefresh: getData,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFDBA4E2),
                        Color(0xFFc252eb)
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipOval(child: Image.network("$profile"),),
                      SizedBox(height: 30,),
                      Text(name ?? '', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),)
                    ],
                  ),
                ),
                // Data of the user
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
                          Text(gender ?? ''),
                        ],
                      ),
                      Divider(
                        height: 20,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.locationPin, color: Colors.red[800],),
                          Text(country ?? ''),
                        ],
                      ),
                      Divider(
                        height: 20,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.at, color: Colors.yellow[800],),
                          Text(email ?? ''),
                        ],
                      ),
                      Divider(
                        height: 20,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.user, color: Colors.green[800],),
                          Text(username ?? ''),
                        ],
                      ),
                      Divider(
                        height: 20,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.calendar, color: Colors.blue[800],),
                          Text(age ?? ''),
                        ],
                      ),
                      Divider(
                        height: 20,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.mobile, color: Colors.purple[800],),
                          Text(phoneNumber ?? ''),
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

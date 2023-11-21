import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/dashboard/components/header_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("nirkrr",
              style: TextStyle(color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu, color: Colors.black),
            )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                flex: 2,// Expanded optimizes empty spaces, wrap with widget and expanded
                child:
                Container( // pfp container
                  height: 100,
                  width: 100,
                  // color: Colors.blueAccent,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/prez.jpeg"),
                  ),
                ),
              ),

              Expanded(
                flex: 5,
                child: Container( // follower haru bhako container
                  height: 100,
                  // width: 100, // not resposive, !compatible with all devices
                  // color: Colors.red,

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HeaderText(value: "Posts", label: "20"),
                          HeaderText(value: "Followers", label: "100"),
                          HeaderText(value: "Following", label: "10"),
                          //
                          // Column(
                          //   children: [
                          //     Text("35"),
                          //     Text("posts"),
                          //   ],
                          // ),
                          // Column(
                          //   children: [
                          //     Text("10K"),
                          //     Text("Followers"),
                          //   ],
                          // ),
                          // Column(
                          //   children: [
                          //     Text("1"),
                          //     Text("Following"),
                          //   ],
                          // ),
                        ],
                      ), // posts, followers, following
                      Row( // button, icon, drop down icon
                        children: [
                          Expanded(flex: 2, child: OutlinedButton(onPressed: null, child:Text("message"))),
                          SizedBox(width:10,),
                          Expanded(flex: 1, child: OutlinedButton(onPressed: null, child:Icon(Icons.person_add_alt_1))),
                          Expanded(flex: 1, child: OutlinedButton(onPressed: null, child:Icon(Icons.arrow_drop_down))),


                        ],

                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            // mainAxisAlignment: MainAxisAlignment.start,// SingleChildScrollView + Colum
            // crossAxisAlignment: CrossAxisAlignment.start,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Hasbulla Hushetsky", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    Icon(Icons.verified, color: Colors.blue),
                  ],
                ),
                Text("Private",style:TextStyle(color: Colors.grey, fontSize: 16)),
                Text("Influencer", style:TextStyle(color: Colors.grey, fontSize: 16)),
                Text("Bio--", style:TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),

          ///List<int> a = [1,2,3]
          ///List<int> b = [3,4,5]
          ///List<int> c = [...a,...b] // deep copy and shallow copy, this is deep copy
          SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(20, (index) => Padding( // just like for loop ListView.builder use garda ni huncha
                padding: EdgeInsets.only(right: 10.0, left:index == 0 ? 10 : 0),

                child: Column(
                  children: [
                    CircleAvatar( // 20 images are generated
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/prez.jpeg"),
                  ),
                    SizedBox(height: 8,),
                    Text("Vacations"), // applies below all the images
                    // Watch out for TAB widget
                    // context,index le "ka chu" bhanera define garcha
                ],
                ),
              ),
              )
            ],
          )),
          Container(
            height: 500,
            width: 100,
            child: GridView.builder(

              shrinkWrap: true,
              itemCount: 100,// unnecessary space lai optimize garcha
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisCount: 2, crossAxisSpacing: 10),
              itemBuilder: (context, index) => Container(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/prez.jpeg", fit: BoxFit.cover),
              ),),
          )


        ],
      ),
    );


  }
}

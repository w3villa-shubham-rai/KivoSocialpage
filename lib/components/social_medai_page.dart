import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialmedia_page/model/userstorymodel.dart';
// Replace with the actual path to your UserStorymodel file

class SocialMedaiaPage extends StatefulWidget {
  @override
  State<SocialMedaiaPage> createState() => _SocialMedaiaPageState();
}

class _SocialMedaiaPageState extends State<SocialMedaiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Column(
                children: [
                  // textpart of view all
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Event",
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "View All",
                          style:
                              TextStyle(color: Color(0xFF2E58E6), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 900,
                    height: 122.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: UserStory(
                            storyuser: storylist[index],
                          ),
                        );
                      },
                      itemCount: storylist.length,
                    ),
                  ),
        
                  PostHereHeading(),
                  ShareThought(),
                  UserPostContentSection()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget UserStory({required UserStorymodel storyuser}) {
  return Container(
    width: 150,
    height: 122.36,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      border: Border.all(color: Color(0xFF3658E6)),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 11),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFFE6AD2E),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(storyuser.storyuserimage),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, right: 10),
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(storyuser.storyocusionimage)),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  storyuser.storyusername,
                  style: const TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  storyuser.storyocusionname,
                  style: const TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Positioned(
            right: 1,
            child: Container(
              width: 57,
              height: 27,
              decoration: const BoxDecoration(
                  color: Color(0xFF2E58E6),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

// post here section Start

Widget PostHereHeading() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 1,
                  color: Color.fromARGB(255, 219, 218, 218),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  height: 30,
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Post Here',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                )),
            Expanded(
                flex: 2,
                child: Container(
                    height: 1, color: Color.fromARGB(255, 219, 218, 218)))
          ],
        )
      ],
    ),
  );
}

Widget ShareThought() {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(227, 217, 217, 218),
            blurRadius: 14.0,
          )
        ]),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/597958694/photo/young-adult-male-student-in-the-lobby-of-a-university.jpg?s=612x612&w=0&k=20&c=QaNEzmcKrLJzmwOcu2lgwm1B7rm3Ouq2McYYdmoMGpU='),
                radius: 15,
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFFF4F4F4),
                  ),
                  child: const TextField(
                    textAlignVertical:
                        TextAlignVertical.center, // Center the text vertically
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      hintText: 'Share a thought!',
                      hintStyle: TextStyle(
                        color: Color(0xFF797272),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xFFF8F9FA),
                    ),
                    height: 34,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Photo/image',
                        style:
                            TextStyle(color: Color(0xFF444D6E), fontSize: 13.0),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xFFF8F9FA),
                    ),
                    height: 34,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Survey',
                        style:
                            TextStyle(color: Color(0xFF444D6E), fontSize: 13.0),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xFFF8F9FA),
                    ),
                    height: 34,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Feelings',
                        style:
                            TextStyle(color: Color(0xFF444D6E), fontSize: 13.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

// social media main



Widget UserPostContentSection() {
  return Padding(
    padding: const EdgeInsets.only(top: 25),
    child: Container(
      child:  Column(
        children: [
          Column(
             children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage('https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-250nw-1714666150.jpg'),
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pratibha Singh",style: TextStyle(color: Color(0xFF19295C),fontSize: 15,fontWeight: FontWeight.w900),),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/globe.svg',width: 10,height: 10,),
                          SizedBox(width: 5,),
                          Text('09:37 AM',style: TextStyle(color: Color(0xFFBABDC9),fontSize: 12),)
                        ],
                      )
                    ],
                  )
                ],
              )
             ],
          ),
           
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('Congratulations ﻿ Sandeep Tomer ﻿ for completing1 year in W3villa Technologies. We are thankful for your dedication and efforts toward this organization. We deeply acknowledge your hard work and contribution to W3villa. Happy Work Anniversary! ✨🙌 May you accomplish many more successful working years with the W3 Family! ✨🎉👏🎀',style: TextStyle(color: Color(0xFF444D6E),fontSize: 14),),
          ),

          Container(
  height: 400,
  width: double.infinity,
  decoration: const BoxDecoration(
    image: DecorationImage(
        image: NetworkImage('https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-250nw-1714666150.jpg'),
        fit: BoxFit.cover),
  ),
          )

        ],
      ),
    ),
  );
}

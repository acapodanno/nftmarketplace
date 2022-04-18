import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.infinity,
          height: 380,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 5, spreadRadius: 2),
              ]),
          child: Stack(
            children: [backgroundImage(), content()],
          ),
        ));
  }

  Widget backgroundImage() => ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Image.network(
        "https://images.unsplash.com/photo-1648828388881-47ebe487bd05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 200,
      ));
  Widget content() => Positioned(
      top: 160,
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4D03AQE2QFexwIBgVg/profile-displayphoto-shrink_800_800/0/1545124132404?e=1655942400&v=beta&t=J4jT_INxpdUhgzxgj20WQTL2tsRsLcI2l_4J6Pb_xjY"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Alessandro Capodanno",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Developer",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "NFT Collector since 2021",
            style: TextStyle(fontSize: 14),
          )
        ],
      ));
}

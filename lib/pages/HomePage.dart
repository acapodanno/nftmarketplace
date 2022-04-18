import 'package:flutter/material.dart';
import 'package:nftmarketplace/pages/partials/Home.dart';
import 'package:nftmarketplace/pages/partials/Profile.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("NFT Shop"),
            centerTitle: true,
            backgroundColor: Colors.black,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(icon: Icon(Icons.home_rounded)),
              Tab(icon: Icon(Icons.account_circle)),
            ])),
        body:TabBarView(children: [
          Home(),
          Profile()
        ],),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Vendi NFT"),
          icon: Icon(Icons.attach_money_rounded),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

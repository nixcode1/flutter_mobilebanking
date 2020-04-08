import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import 'g';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFFCE2218),
        leading: Icon(FontAwesome5Solid.bars),
        title: Text('Mobile Banking',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),),
      ),
      body: Stack(
              children: [ListView(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                  child: Text('My Accounts',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Add Account',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600, fontSize: 16),),
                ),
              ]
            ),
            SizedBox(height: 200),
            Container(
              height: MediaQuery.of(context).size.height - 345,
              decoration: BoxDecoration(
                color: Color(0xfffafafa),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 5
                  )
                ]
              ),
              child: GridView.count(
                padding: EdgeInsets.only(top: 20, left: 2),
                crossAxisSpacing: 10,
                mainAxisSpacing: 0.1,
                crossAxisCount: 3,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesome5Regular.money_bill_alt, size: 25),
                      SizedBox(height: 10),
                      Text('Send Money')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesome5Solid.mobile_alt, size: 25),
                      SizedBox(height: 10),
                      Text('Mobile Top')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesome5Regular.futbol, size: 25),
                      SizedBox(height: 10),
                      Text('Sports & Gaming')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesome.desktop, size: 25),
                      SizedBox(height: 10),
                      Text('Cable TV')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Entypo.light_bulb, size: 25),
                      SizedBox(height: 10),
                      Text('Electricity')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(MaterialCommunityIcons.clipboard_text_play_outline, size: 25),
                      SizedBox(height: 10),
                      Text('Transactions'),
                      Text('History')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesome5Solid.globe_africa, size: 25),
                      SizedBox(height: 10),
                      Text('Foreign Currency'),
                      Text('Transfer')
                    ],
                  ),
                ],
              )
            )

          ]
        ),
        Positioned(
          top: 80,
          left: 50,
            child: Container(
            height: 130,
            width: 270,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.1,
                  blurRadius: 3,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Savings Account: ***7629',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text('NGN 7,998.32',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20
                ),)
              ]
            )
            ),
        )
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'Nigeria';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned(
            right: -40,
            left: -10,
            child: Container(
              height: MediaQuery.of(context).size.height - 330,
              decoration: BoxDecoration(
                  color: Color(0XFFD42E12),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(120))),
            ),
          ),
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 30,
                  )
                ]),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 5,
                child: Image(image: AssetImage("assets/ubalogo.jpg")),
              ),
              SizedBox(height: 10),
              Center(
                  child: Text(
                "Mobile Banking",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              )),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: <Widget>[
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(90))),
                      child: Icon(
                        Ionicons.ios_mail,
                        size: 40,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "My Inbox",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: <Widget>[
                    Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(90))),
                        child: Icon(Icons.system_update, size: 35, color: Colors.black,)),
                    SizedBox(height: 5),
                    Text(
                      "Top-up",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
              ]),
              SizedBox(height: 360),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Sign Up", style: TextStyle(color: Colors.grey, fontSize: 25),),
                  SizedBox(height: 15),
                  Text("Open an Account", style: TextStyle(color: Colors.grey, fontSize: 20),),
                ],
              ),
            ],
          ),
           
          Positioned(
            top: 275,
            left: 35,
            child: Container(
              height: 330,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 0.1
                )
                ]
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 20,
                          child: Image(image: AssetImage('assets/flag.png'))
                        ),
                        SizedBox(width: 2),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Colors.black
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['Nigeria', 'Ghana', 'Cameroon', 'Chad']
                            .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );}).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.1
                        )
                      ]
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefix: SizedBox(width: 10),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                          fontWeight: FontWeight.w600
                        ),
                      ), 
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.1
                        )
                      ]
                    ),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefix: SizedBox(width: 10),
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                          fontWeight: FontWeight.w600
                        ),
                        suffixIcon: Icon(Icons.visibility, color: Colors.grey)
                      ), 
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 15, left: 90),
                    child: Text("Forgot your Password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 230,
                    decoration: BoxDecoration(
                      // color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(45),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 0.1
                        )
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.red.shade900, Colors.red[200]], // whitish to gray
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                    ),
                    child: Text('Login', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    )),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10),
                    child: Text("or login with",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        child: Image(image: AssetImage('assets/facial_recognition-512.png'))
                      ),
                      SizedBox(width: 30),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image(image: AssetImage('assets/fingerprint_scan.png'))
                      ),
                    ],
                  )
                ]
              ),
            ),
          ),
        ]
      )
    );
  }
}

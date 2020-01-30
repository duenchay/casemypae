import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:p/form3.dart';
import 'package:p/qrcode.dart';
import 'package:p/showme.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // brightness: Brightness.dark,
    primaryColor: Colors.blueGrey,
    // accentColor: Colors.cyan[600], 
          

          // primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final _pageOptions = [SignUpForm(),Myqrcode(),Detail()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("บันทึกการจับกุม"),
        // backgroundColor: Colors.yellow,
      ),
      body: _pageOptions[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.blueGrey[300],
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.pageview, title: "Data"),
          TabData(iconData: Icons.local_hospital, title: "Data"),
          
        ],
        onTabChangedListener: (int position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}
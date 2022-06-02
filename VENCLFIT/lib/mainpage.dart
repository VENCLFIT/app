import 'package:flutter/material.dart';
import 'package:venclfit/mainpages/homescreen.dart';
import 'package:venclfit/mainpages/mylikescreen.dart';
import 'package:venclfit/mainpages/myscreen.dart';
import 'package:venclfit/mainpages/showgridscreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState()  => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_filled)),
    BottomNavigationBarItem(label: 'Grid View', icon: Icon(Icons.grid_view)),
    BottomNavigationBarItem(label: 'My Likes', icon: Icon(Icons.favorite)),
    BottomNavigationBarItem(label: 'My Pages', icon: Icon(Icons.account_circle)),
  ];

  List pages = [
    HomeScreen(),
    ShowGridScreen(),
    MyLikeScreen(),
    MyScreen(),
  ];

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('VENCLFIT', style: TextStyle(fontFamily: 'Work_Sans', fontSize:30,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState((){
            _selectedIndex = index;
          });
        },
        items:bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
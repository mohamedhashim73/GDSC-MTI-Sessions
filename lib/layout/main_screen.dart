import 'package:flutter/material.dart';
import 'package:vodafone_app/modules/profile_screen.dart';
import '../modules/favorite_screen.dart';
import '../modules/home_screen.dart';

class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> layoutScreens = [HomeScreen(),FavoriteScreen(),ProfileScreen()];
  int currentIndex = 0 ;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
        actions:
        [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Todo: represent current index for bottomNavigationBarItem
        onTap: (index)
        {
          setState(() {
            // Todo: use setState to rebuild user interface as there is change on current index value
            currentIndex = index;
          });
        },
        items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
      // Todo: get The Screen using layoutScreens and the index of the list ( current index )
      body: layoutScreens[currentIndex]
    );
  }
}

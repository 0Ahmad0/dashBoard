import 'package:dashboard/add_screen.dart';
import 'package:dashboard/saved_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': AddVideoScreen(),
        'title' : 'Add Video'
      },
      {
        'page': SavedVideoScreen(),
        'title' : 'Saved Videos'
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        centerTitle: true,
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: -4.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border(
                top: BorderSide(
                  color: Colors.transparent,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: (index){
                setState(() {
                  _selectedPageIndex = index;
                });
              },
              currentIndex: _selectedPageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Add'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.rss_feed),
                  title: Text('Saved'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

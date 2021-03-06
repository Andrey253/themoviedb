
import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_colors.dart';
import 'package:themoviedb/widgets/movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 1;

  void onSelectesTap(int index){
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TMDB'),
      backgroundColor: AppColors.mainDarkBlue,),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          Text('Новости'),
          MovieListWidget(),
          Text('Сериалы'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          label: 'Новости'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined),
            label: 'Фильмы'
          ), BottomNavigationBarItem(
              icon: Icon(Icons.tv),
            label: 'Сериалы'
          ),
        ],
      onTap: (index){
        onSelectesTap(index);
      },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school_manager/presentation/library_page.dart';
import 'package:school_manager/presentation/main_page.dart';
import 'package:school_manager/presentation/timetable_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(6, 26, 35, 1)),
        useMaterial3: true,
      ),
      home: const NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.article), label: 'Новости'),
          NavigationDestination(icon: Icon(Icons.book), label: 'Библиотека'),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Расписание'),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[
        const BasicScreen(),
        const LibraryScreen(),
        const TimetableScreen()

      ][currentPageIndex],
    );
  }
}
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageName;

  const CustomAppBar({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(pageName, 
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.notifications)
          ),
        ],
        backgroundColor: const Color.fromRGBO(6, 26, 35, 1),
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class TimetableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageName;

  const TimetableAppBar({super.key, required this.pageName});

  @override
  Widget build(BuildContext context){
    return AppBar(
        title: Text(
          pageName,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Icon(Icons.calendar_month),
                Padding(padding: EdgeInsets.only(right: 12)),
                Icon(Icons.more_vert),
              ],
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(6, 26, 35, 1),
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
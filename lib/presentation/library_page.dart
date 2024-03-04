import 'package:flutter/material.dart';
import 'package:school_manager/presentation/UI/appbar.dart';
import 'package:school_manager/presentation/UI/card_widget.dart';
import 'package:school_manager/presentation/UI/subject_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageName: 'Библиотека'),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: <Widget>[
            DrawerHeader(
                child: Column(
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 48,
                ),
                Text(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                    'Абралава Георгий'),
                Text('Ученик 11а класса',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                Padding(padding: EdgeInsets.only(top: 19)),
                Text(
                  'Средняя успеваемость: 4.5',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ],
            )),
            Padding(
              padding:
                  EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_circle),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text(
                        'Личный кабинет',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 12)),
                  Row(
                    children: [
                      Icon(Icons.group),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text(
                        'Группа',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 12)),
                  Row(
                    children: [
                      Icon(Icons.work),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text(
                        'Сотрудники',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: const [
            Text('Недавние учебники',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    fontSize: 16)),
            Padding(padding: EdgeInsets.only(bottom: 8)),
            RecentBookWidget(),
            Padding(padding: EdgeInsets.only(bottom: 24)),
            Text('Предметы',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    fontSize: 16)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // subject - название предмета
                    // iconPath - путь к иконке (обязательно assets/images/)
                    SubjectWidget(
                      subject: 'Русский язык',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                    SubjectWidget(
                      subject: 'Литература',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectWidget(
                      subject: 'Английский',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                    SubjectWidget(
                      subject: 'История',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectWidget(
                      subject: 'Обществознание',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                    SubjectWidget(
                      subject: 'География',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SubjectWidget(
                      subject: 'ОБЖ',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                    SubjectWidget(
                      subject: 'Физика',
                      iconPath: 'assets/images/BMD-3398.png',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

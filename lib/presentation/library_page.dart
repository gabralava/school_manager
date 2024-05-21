import 'package:flutter/material.dart';
import 'package:school_manager/presentation/ui_kit/appbar.dart';
import 'package:school_manager/presentation/ui_kit/card_widget.dart';
import 'package:school_manager/presentation/ui_kit/drawer.dart';
import 'package:school_manager/presentation/ui_kit/subject_widget.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageName: 'Библиотека'),
      drawer: const CustomDrawer(),
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
            // TODO: Сделать это [GridTile]
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

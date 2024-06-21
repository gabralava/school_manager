import 'package:flutter/material.dart';
import 'package:school_manager/presentation/ui_kit/appbar.dart';
import 'package:school_manager/presentation/ui_kit/card_widget.dart';
import 'package:school_manager/presentation/ui_kit/drawer.dart';
import 'package:school_manager/presentation/ui_kit/subject_widget.dart';

class LibraryScreen extends StatelessWidget {
  final List<SubjectWidget> listOfSubjects = const [
    SubjectWidget(
        subject: 'Русский язык', iconPath: 'BMD-3398.png'),
    SubjectWidget(
        subject: 'Литература', iconPath: 'BMD-3398.png'),
    SubjectWidget(
        subject: 'Английский', iconPath: 'BMD-3398.png'),
    SubjectWidget(
        subject: 'Обществознание', iconPath: 'BMD-3398.png'),
    SubjectWidget(subject: 'География', iconPath: 'BMD-3398.png'),
    SubjectWidget(subject: 'Физика', iconPath: 'BMD-3398.png'),
    SubjectWidget(subject: 'ОБЖ', iconPath: 'BMD-3398.png')
  ];

  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageName: 'Библиотека'),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const Text('Недавние учебники',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    fontSize: 16)),
            const Padding(padding: EdgeInsets.only(bottom: 8)),
            const RecentBookWidget(),
            const Padding(padding: EdgeInsets.only(bottom: 24)),
            const Text('Предметы',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    fontSize: 16)),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => listOfSubjects[index],
              itemCount: listOfSubjects.length,
            )
          ],
        ),
      ),
    );
  }
}

/* 

  SubjectWidget - виджет для предметов
  Принимает 2 аргумента: subject, iconPath
  subject - название предмета в виде строки (желательно писать с заглавной буквы)
  iconPath - путь к иконке изображения
  
*/

import 'package:flutter/material.dart';
import 'package:school_manager/presentation/subject_list_page.dart';

class SubjectWidget extends StatelessWidget {
  final String subject;
  final String iconPath;
  
  const SubjectWidget(
      {super.key, required this.subject, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubjectListScreen(subject: subject)));
      },
      child: SizedBox(
        height: 150,
        width: 150,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: AssetImage('assets/icons/$iconPath'),
                    height: 64,
                    width: 64,
                    fit: BoxFit.cover,
                  )),
              const Padding(padding: EdgeInsets.only(bottom: 8)),
              Text(
                subject,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

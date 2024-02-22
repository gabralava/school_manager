import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Расписание',
          style: TextStyle(
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
            child: Row(children: [
              Icon(Icons.calendar_month),
              Padding(padding: EdgeInsets.only(right: 12)),
              Icon(Icons.more_vert),
            ]),
          ),
        ],
        backgroundColor: const Color.fromRGBO(6, 26, 35, 1),
      ),
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
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  // TODO: Сделать автоматическое создание строк
                  // TODO: Добавить возможность нажатия на дату с последующим выводом расписания
                  Row(
                    children: [
                      DayWidget(),
                      DayWidget(),
                      DayWidget(),
                      DayWidget(),
                      DayWidget(),
                      DayWidget(),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: Column(children: [Text('Пн'), Text('26')]),
                      ),
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: Column(children: [Text('Вт'), Text('27')]),
                      ),
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: Column(children: [Text('Ср'), Text('28')]),
                      ),
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: Column(children: [Text('Чт'), Text('29')]),
                      ),
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: Column(children: [Text('Пт'), Text('1')]),
                      ),
                      SizedBox(
                        height: 80,
                        width: 60,
                        child: Column(children: [Text('Сб'), Text('2')]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // TODO: Сделать отдельным виджетом
            SizedBox(
              height: 120,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book,
                              size: 48,
                            ),
                            Text(
                              '8:30 - 9:15',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 96,
                        width: 1,
                        color: Colors.grey,
                      ),
                      Padding(padding: EdgeInsets.only(right: 16)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'A-315',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                          ),
                          Text(
                            'Литература',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                fontSize: 16),
                          ),
                          Text(
                            'Марина Геннадьевна',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          Spacer(),
                          Text(
                            'ДЗ: Прочитать Войну и мир',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  const DayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      width: 60,
      child: Column(children: [
        Text(
          'Пн',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              fontSize: 12),
        ),
        Text(
          '19',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 16),
        )
      ]),
    );
  }
}

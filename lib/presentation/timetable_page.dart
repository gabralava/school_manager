import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:school_manager/presentation/ui_kit/appbar.dart';
import 'package:school_manager/presentation/ui_kit/drawer.dart';

class TimetableScreen extends StatefulWidget {
  const TimetableScreen({super.key});

  @override
  _TimetableScreenState createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TimetableAppBar(pageName: 'Расписание'),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: WeeklyWidget(
                onIndexChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
            Visibility(
              visible: selectedIndex == 0,
              child: const ScheduleWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          child: Row(
            children: [
              const SizedBox(
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
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 96,
                width: 1,
                color: Colors.grey,
              ),
              const Padding(padding: EdgeInsets.only(right: 16)),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A-315',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Литература',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Марина Геннадьевна',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'ДЗ: Прочитать Войну и мир',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  final bool isSelected;
  final int daysToAdd;
  final Map<String, String> weekDays = const {
    'Mon': 'Пн',
    'Tue': 'Вт',
    'Wed': 'Ср',
    'Thu': 'Чт',
    'Fri': 'Пт',
    'Sat': 'Сб',
    'Sun': 'Вс',
  };

  const DayWidget({super.key, this.daysToAdd = 0, required this.isSelected});

  // Переделывает английский формат даты на русский
  String convertDateToRussian(daysToAdd, weekDays) {
    String todaysDate =
        DateFormat('EEE').format(DateTime.now().add(Duration(days: daysToAdd)));
    return weekDays[todaysDate];
  }

  @override
  Widget build(BuildContext context) {
    // Получаем текущую дату
    DateTime now = DateTime.now();

    // Добавляем нужное количество дней
    DateTime targetDate = now.add(Duration(days: daysToAdd));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          convertDateToRussian(daysToAdd,
              weekDays), // 'EEE' формаconst т для вывода дня недели (например, 'Пн')
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
            fontSize: 12,
          ),
        ),
        Text(
          DateFormat('dd').format(targetDate), // Выводим день месяца
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: isSelected ? FontWeight.w800 : FontWeight.w400,
            fontSize: 16,
          ),
        ),
        Visibility(
          visible: isSelected,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Container(
              
              height: 2,
              width: 16,
              color: const Color.fromRGBO(31, 95, 91, 1),
            ),
          ),
        )
      ],
    );
  }
}

class WeeklyWidget extends StatefulWidget {
  final ValueChanged<int> onIndexChanged;

  const WeeklyWidget({super.key, required this.onIndexChanged});

  @override
  State<WeeklyWidget> createState() => _WeeklyWidgetState();
}

class _WeeklyWidgetState extends State<WeeklyWidget> {
  List<bool> isSelected = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width / 7 + 4;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ToggleButtons(
          selectedColor: const Color.fromRGBO(31, 95, 91, 1),
          fillColor: Colors.transparent,
          constraints: BoxConstraints.expand(height: 60, width: buttonWidth),
          renderBorder: false,
          isSelected: isSelected,
          onPressed: (index) {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
              widget.onIndexChanged(index);
            });
          },

          children: [
            DayWidget(
              isSelected: isSelected[0],
              daysToAdd: 0,
            ),
            DayWidget(
              isSelected: isSelected[1],
              daysToAdd: 1,
            ),
            DayWidget(
              isSelected: isSelected[2],
              daysToAdd: 2,
            ),
            DayWidget(
              isSelected: isSelected[3],
              daysToAdd: 3,
            ),
            DayWidget(
              isSelected: isSelected[4],
              daysToAdd: 4,
            ),
            DayWidget(
              isSelected: isSelected[5],
              daysToAdd: 5,
            ),
          ],
        ),
      ],
    );
  }
}

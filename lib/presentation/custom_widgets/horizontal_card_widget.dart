/* 

Здесь описаны виджеты с горизонтальным представлением, т.е с использованием Row()
HorizontalCardWidget() используется в BasicScreen
RecentBookWidget() используется в LibraryScreen

*/

import 'package:flutter/material.dart';

class HorizontalCardWidget extends StatelessWidget {
  const HorizontalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const Image(
                image: AssetImage('assets/images/BMD-3398.png'),
                width: 100,
                height: 100,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 12)),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Headline',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  Text('Description',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 12))
                ],
              ),
            ),
            // Располагаю иконку в правом нижнем углу. Виджет Spacer() заполняет все доступное пространство между иконкой и текстом
            const Spacer(),
            const Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: null,
                iconSize: 24,
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(31, 95, 91, 1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentBookWidget extends StatelessWidget {
  const RecentBookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const Image(
                image: AssetImage('assets/images/Rus.jpg'),
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 12)),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5 класс. 2 часть',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                  Text(
                    'Русский язык',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  Text('В.Г. Горецкий',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 10)),
                  Spacer(),
                  Text('Год издания: 2024',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          fontSize: 10)),
                ],
              ),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: null,
                iconSize: 24,
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(31, 95, 91, 1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

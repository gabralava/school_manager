import 'package:flutter/material.dart';
import 'package:school_manager/presentation/custom_widgets/horizontal_card_widget.dart';
import 'package:school_manager/presentation/custom_widgets/vertical_card_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App', 
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
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.notifications)
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
                Text(style: TextStyle(
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
                Text('Средняя успеваемость: 4.5', style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 12
                ),),
              ],
            )
          ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_circle),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text('Личный кабинет', style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w800),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 12)),
                  Row(
                    children: [
                      Icon(Icons.group),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text('Группа', style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w800),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 12)),
                  Row(
                    children: [
                      Icon(Icons.work),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text('Сотрудники', style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w800),)
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
          children: [
            const Text('Главное меню', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w800, fontSize: 16)),
            const Padding(padding: EdgeInsets.only(bottom: 4)),  
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  VerticalCardWidget(),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  VerticalCardWidget(),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  VerticalCardWidget(),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 12)),
            const Text('Последние новости', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w800, fontSize: 16)),
            const HorizontalCardWidget(),
            const HorizontalCardWidget(),
            const HorizontalCardWidget(), 
          ],
        )
      ),
    );
  }
}



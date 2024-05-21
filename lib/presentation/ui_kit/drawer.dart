import 'package:flutter/material.dart';
import 'package:school_manager/presentation/personal_account_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: <Widget>[
            const DrawerHeader(
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
              padding: const EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 12),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => const PersonalAccountScreen())
                      );
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.account_circle),
                        Padding(padding: EdgeInsets.only(right: 12)),
                        Text('Личный кабинет', style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w800),)
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 12)),
                  const Row(
                    children: [
                      Icon(Icons.group),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Text('Группа', style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w800),)
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 12)),
                  const Row(
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
      );
  }
}
/* 

Здесь описаны виджеты с вертикальным представлением, т.е. с использованием Column()
VerticalCardWidget() используется в BasicScreen

*/

import 'package:flutter/material.dart';

class VerticalCardWidget extends StatelessWidget {
  const VerticalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: const Image(
                image: AssetImage('assets/images/BMD-3398.png'),
                height: 150,
                fit: BoxFit.fitHeight),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Headline',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14)),
                Text(
                  'Description',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Padding(padding: EdgeInsets.only(bottom: 48)),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 100,
                    height: 32,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(31, 95, 91, 1))),
                      child: Text('Перейти',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

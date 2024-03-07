import 'package:flutter/material.dart';
import 'package:school_manager/presentation/ui_kit/appbar.dart';
import 'package:school_manager/presentation/ui_kit/card_widget.dart';
import 'package:school_manager/presentation/ui_kit/drawer.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(pageName: 'Flutter app'),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const Text('Главные новости', style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w800, fontSize: 16)),
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



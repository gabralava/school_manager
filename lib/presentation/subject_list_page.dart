import 'package:flutter/material.dart';

class SubjectListScreen extends StatelessWidget {
  final String subject;

  const SubjectListScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            subject,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 24),
                child: Icon(Icons.more_vert)),
          ],
          backgroundColor: const Color.fromRGBO(6, 26, 35, 1),
        ),
        body: const Padding(
          padding: EdgeInsets.only(
            top: 12,
            left: 24,
            right: 24,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: SearchBar(
                  padding: MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16)),
                  leading: Icon(Icons.search),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 12)),
              Row(children: [
                SizedBox(
                  width: 96,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(31, 95, 91, 1))),
                    child: Text('Общие',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 12)),
                SizedBox(
                  width: 132,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(31, 95, 91, 1))),
                    child: Text('Сохраненные',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ),
              ]),
              Padding(padding: EdgeInsets.only(bottom: 12)),
              Expanded(child: ExpansionList())
            ],
          ),
        ));
  }
}

class ExpansionList extends StatelessWidget {
  const ExpansionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 11,
      itemBuilder: (context, index) {
        return Card(
          child: Theme(
            data: ThemeData(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              title: Text('${index + 1} класс'),
              children: const [
                TextbookWidget(),
                TextbookWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TextbookWidget extends StatelessWidget {
  const TextbookWidget({super.key});

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
                image: AssetImage('assets/images/Rus.jpg'),
                width: 70,
                height: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 12)),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Русский язык',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  Text('В.Г. Горецкий, В.А. Кирюшкин',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 10)),
                  Spacer(),
                  Text(
                    'Год издания: 2024',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        fontSize: 10),
                  )
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

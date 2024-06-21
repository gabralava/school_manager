import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_manager/presentation/ui_kit/appbar.dart';
import 'package:school_manager/services/books_handler.dart';

Future<List<Books>> loadBooks() async {
  final jsonString = await rootBundle.loadString('lib/resources/books.json');
  final books = booksFromJson(jsonString);
  return books;
}

Future<List<Books>> filterBooks(String subject) async {
  final List<Books> books = await loadBooks();
  return books.where((book) => book.subject.toLowerCase() == subject.toLowerCase()).toList();
}

class SubjectListScreen extends StatelessWidget {
  final String subject;

  const SubjectListScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(pageName: subject),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
              child: SearchBar(
                padding: WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16)),
                leading: Icon(Icons.search),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 12)),
            const Row(children: [
              SizedBox(
                width: 96,
                height: 32,
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
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
                      backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(31, 95, 91, 1))),
                  child: Text('Сохраненные',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ),
            ]),
            const Padding(padding: EdgeInsets.only(bottom: 12)),
            Expanded(
              child: ExpansionList(
                subject: subject,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExpansionList extends StatelessWidget {
  final String subject;

  const ExpansionList({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Books>>(
      future: filterBooks(subject),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final filteredBooks = snapshot.data!;
          if (filteredBooks.isEmpty) {
            return const Center(child: Text('Книги не найдены'));
          } else {
            // Группировка книг по классам
            final Map<int, List<Books>> booksByClass = {};
            for (var book in filteredBooks) {
              booksByClass.putIfAbsent(book.classNumber, () => []).add(book);
            }

            return ListView.builder(
              itemCount: booksByClass.length,
              itemBuilder: (context, index) {
                final classNumber = booksByClass.keys.elementAt(index);
                final classBooks = booksByClass[classNumber]!;

                return Card(
                  child: Theme(
                    data: ThemeData(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text('$classNumber класс'),
                      children: classBooks.map((book) {
                        return TextbookWidget(
                          id: book.id,
                          subject: book.subject,
                          classNumber: book.classNumber,
                          author: book.author,
                          date: book.date,
                          imagePath: book.imgPath,
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            );
          }
        }
      },
    );
  }
}

class TextbookWidget extends StatelessWidget {
  final int id;
  final String subject;
  final int classNumber;
  final String author;
  final int date;
  final String imagePath;

  const TextbookWidget({
    super.key,
    required this.id,
    required this.subject,
    required this.classNumber,
    required this.author,
    required this.date,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: AssetImage(imagePath),
                width: 70,
                height: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 12)),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  Text(author,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 10)),
                  const Spacer(),
                  Text(
                    'Год издания: $date',
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        fontSize: 10),
                  )
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
                      WidgetStatePropertyAll(Color.fromRGBO(31, 95, 91, 1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

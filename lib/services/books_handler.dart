import 'dart:convert';

import 'package:flutter/services.dart';

List<Books> booksFromJson(String str) {
  final List<Books> books = List<Books>.from(
    json.decode(str).map((x) => Books.fromJson(x))
  );
  
  books.sort((a, b) => a.classNumber.compareTo(b.classNumber),);

  return books;
}

class Books {
  final int id;
  final String subject;
  final int classNumber;
  final String author;
  final int date;
  final String imgPath;

  Books({
    required this.id,
    required this.subject,
    required this.classNumber,
    required this.author,
    required this.date,
    required this.imgPath,
  });

  factory Books.fromJson(Map<String, dynamic> json) => Books(
        id: json["id"],
        subject: json["subject"],
        classNumber: json["class"],
        author: json["author"],
        date: json["date"],
        imgPath: json["img_path"],
      );

  @override
  String toString() {
    return 'id: $id\n'
        'subject: $subject\n'
        'class: $classNumber\n'
        'author: $author\n'
        'date: $date\n'
        'img_path: $imgPath\n';
  }
}

Future<List<Books>> loadBooks() async {
  final jsonString = await rootBundle.loadString('lib/resources/books.json');

  final books = booksFromJson(jsonString);

  return books;
}

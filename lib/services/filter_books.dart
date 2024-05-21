import 'package:school_manager/services/books_handler.dart';

Future<List<Books>> filterBooks(String subject) async {
  final List<Books> books = await loadBooks();
  final filteredBooks = books.where((book) => book.subject == subject).toList();
  
  return filteredBooks;
}
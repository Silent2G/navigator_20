import 'package:book_navigation_20/model/book.dart';
import 'package:book_navigation_20/ui/book_details_screen.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends Page {
  final Book book;

  BookDetailsPage({
    this.book,
  }) : super(key: ValueKey(book));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BookDetailsScreen(book: book);
      },
    );
  }
}
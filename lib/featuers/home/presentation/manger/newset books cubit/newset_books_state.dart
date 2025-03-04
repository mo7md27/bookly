import 'package:bookly/featuers/home/data/models/book_models/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBooksState extends Equatable{
  const NewsetBooksState();

  @override
  List<Object?> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState{}

class NewsetBooksLoading extends NewsetBooksState{}

class NewsetBooksSuccess extends NewsetBooksState{

  final List<BookModel>books;

  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewsetBooksState{

  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}
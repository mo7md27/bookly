import 'package:bookly/featuers/home/data/models/book_models/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksState extends Equatable{

  const SimilarBooksState();

  @override
  List<Object?> get props => [];

}

class SimilarBooksInitial extends SimilarBooksState{}

class SimilarBooksFailure extends SimilarBooksState{

  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}


class SimilarBooksLoading extends SimilarBooksState{}


class SimilarBooksSuccess extends SimilarBooksState{

  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);
}
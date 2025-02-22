import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/featuers/home/data/models/book_models/book_model.dart';
import 'package:bookly/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeautredBooks() {
    // TODO: implement fetchFeautredBooks
    throw UnimplementedError();
  }
}
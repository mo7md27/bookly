import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/featuers/home/data/models/book_models/book_model.dart';
import 'package:bookly/featuers/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {

  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{
  try {
  var data=await apiService.get(
    endPoint: 
      'volumes?q=subject:Programming&Sorting=newest&Filtering=free-ebooks');
   List<BookModel>books=[];
    for(var item in data['item']){
      books.add(BookModel.fromJson(item));
    }

    return right(books);

} on Exception catch (e) {
  return left(ServerFailuer());
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeautredBooks() {
    // TODO: implement fetchFeautredBooks
    throw UnimplementedError();
  }
}
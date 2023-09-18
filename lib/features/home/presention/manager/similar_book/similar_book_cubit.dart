import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks() async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(SimilarBookFailure(failure.errorMessage));
    }, (books) {
      emit(SimilarBookSuccess(books));
    });
  }
}

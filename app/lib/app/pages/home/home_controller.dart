// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:dw9_delivery_app/app/pages/home/home_state.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_repository.dart';

class HomeController extends Cubit<HomeState> {
  HomeController({
    required ProductsRepository productsRepository,
  })  : _productsRepository = productsRepository,
        super(
          const HomeState.initial(),
        );

  final ProductsRepository _productsRepository;

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));
    try {
      final products = await _productsRepository.findAllProducts();
      emit(state.copyWith(
        status: HomeStateStatus.loaded,
        products: products,
      ));
    } catch (e, s) {
      log("Erro ao buscar produtos", error: e, stackTrace: s);
      emit(
        state.copyWith(
            status: HomeStateStatus.error,
            errorMessage: "Erro ao buscar produtos"),
      );
    }
  }
}

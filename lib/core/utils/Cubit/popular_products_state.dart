part of 'popular_products_cubit.dart';

@immutable
abstract class PopularProductsState {}

class PopularProductsInitial extends PopularProductsState {}

class PopularProductsLoading extends PopularProductsState {}

class PopularProductsSuccess extends PopularProductsState {

  final List<Product> products;
  PopularProductsSuccess({required this.products});
}

class PopularProductsFailure extends PopularProductsState {
  final String message;
  PopularProductsFailure({required this.message});
}

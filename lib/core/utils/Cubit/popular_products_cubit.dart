import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:splash/Features/Data/Models/Product_Model.dart';
import 'package:splash/core/Services/Api_Request.dart';

part 'popular_products_state.dart';

class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit() : super(PopularProductsInitial());

  List<Product> products = [];

  void fetchProducts() {
  emit(PopularProductsLoading());
  try {
  ProductService().fetchProducts(limit: '20', page: '1').then((value) {
  products = value;
  emit(PopularProductsSuccess(products: products));
  }).catchError((error) {
  emit(PopularProductsFailure( message: error.toString(),));
  });
  } catch (error) {
  emit(PopularProductsFailure(message:error.toString()));
    }
  }


  }


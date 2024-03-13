import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splash/Features/presentation/view/Screens_Widgets/ProductItem.dart';
import 'package:splash/core/utils/Cubit/popular_products_cubit.dart'; // Import PopularProductsCubit

class PopularProductsList extends StatelessWidget {
  const PopularProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PopularProductsCubit()..fetchProducts(), // Initialize and fetch products
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: BlocBuilder<PopularProductsCubit, PopularProductsState>(
            builder: (context, state) {
              if (state is PopularProductsLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is PopularProductsSuccess) {
                final products = state.products;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 10,
                  //products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    final imagePath = 'assets/test.jpg';

                    // product.productVariations.isNotEmpty &&
                    //     product.productVariations.first.productVarientImages != null &&
                    //     product.productVariations.first.productVarientImages!.isNotEmpty &&
                    //     product.productVariations.first.productVarientImages!.first.imagePath != null
                    //     ? product.productVariations.first.productVarientImages!.first.imagePath!
                         // Use a placeholder image if image path is not available
                    final title = "product";
                        //product.name ?? 'Product'; // Ensure title is not null
                    final price = '0';
                    // product.productVariations.isNotEmpty &&
                    //     product.productVariations.first.price != null
                    //     ? '\$${product.productVariations.first.price!.toString()}'
                    //     : '\$0'; // Ensure price is not null

                     return Container();
                    // ProductItem(
                    //   image: imagePath,
                    //   title: title,
                    //   price: price,
                    // );
                  },
                );
              } else if (state is PopularProductsFailure) {
                return Center(child: Text('Error: ${state.message}'));
              } else {
                return Container(); // Handle other states if necessary
              }
            },
          ),
        ),
      ),
    );
  }
}

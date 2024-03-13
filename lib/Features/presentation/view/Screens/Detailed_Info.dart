// //
// // import 'package:flutter/material.dart';
// // import 'package:splash/Features/Data/Models/Product_Model.dart';
// // import 'package:splash/Features/presentation/view/Screens/test.dart';
// // import 'package:splash/core/Services/Api_Request.dart';
// //
// // class WishListScreen extends StatelessWidget {
// //   const WishListScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         centerTitle: false,
// //         title: Text(
// //           "product",
// //           style: Theme.of(context).textTheme.titleLarge,
// //         ),
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.shopping_bag_outlined),
// //             onPressed: () {
// //               // Navigator.pushNamed(context, cartScreen);
// //             },
// //           ),
// //         ],
// //       ),
// //       body: FutureBuilder<List<Product>>(
// //         future: fetchProducts(),
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.waiting) {
// //             return Center(child: CircularProgressIndicator());
// //           } else if (snapshot.hasError) {
// //             return Center(child: Text('Error: ${snapshot.error}'));
// //           } else {
// //             return WishlistItemList(products: snapshot.data!);
// //           }
// //         },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         child: const Icon(
// //           Icons.delete,
// //           color: Colors.white,
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class WishlistItemList extends StatelessWidget {
// //   final List<Product> products;
// //
// //   const WishlistItemList({Key? key, required this.products}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return GridView.builder(
// //       shrinkWrap: true,
// //       physics: const ScrollPhysics(),
// //       itemCount: products.length,
// //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //         mainAxisExtent: 300,
// //         crossAxisCount: 2,
// //       ),
// //       itemBuilder: (BuildContext context, int index) {
// //         final product = products[index];
// //         return Card(
// //           elevation: 2,
// //           margin: const EdgeInsets.all(4),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: <Widget>[
// //               Stack(
// //                 children: [
// //                   Image.network(
// //                     product.brandLogoUrl!,
// //                     width: MediaQuery.of(context).size.width,
// //                     height: MediaQuery.of(context).size.height / 5,
// //                     fit: BoxFit.cover,
// //                   ),
// //                   // Positioned(
// //                   //   top: 0,
// //                   //   right: 0,
// //                   //   child: IconButton(
// //                   //     onPressed: () {
// //                   //       // Implement delete logic here
// //                   //     },
// //                   //     icon: const Icon(Icons.cancel_outlined),
// //                   //   ),
// //                   // ),
// //                 ],
// //               ),
// //               const SizedBox(
// //                 height: 4,
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.only(left: 10, right: 10),
// //                 child: Text(
// //                   product.name,
// //                   overflow: TextOverflow.ellipsis,
// //                   maxLines: 1,
// //                   softWrap: true,
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 4,
// //               ),
// //               Padding(
// //                   padding: const EdgeInsets.all(8),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Text(
// //                         product.brandName!,
// //                       ),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           Icon(Icons.favorite_border),
// //                           SizedBox(width: 10,),
// //                           Icon(Icons.shopping_cart),
// //                         ],
// //                       ),
// //                     ],
// //                   )
// //               )
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
// //
// //
// //
// //
// // // Define other models here...
// //
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class Product {
//   final String name;
//   final String imageUrl;
//
//   Product({required this.name, required this.imageUrl});
//
//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       name: json['name'] ?? 'productName',
//       imageUrl: json['Brands']?['brand_logo_image_path'] ?? '',
//     );
//   }
//
// }
//
// class ProductListScreentext extends StatefulWidget {
//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }
//
// class _ProductListScreenState extends State<ProductListScreentext> {
//   late Future<List<Product>> futureProducts;
//
//   @override
//   void initState() {
//     super.initState();
//     futureProducts = fetchProducts();
//   }
//
//   Future<List<Product>> fetchProducts() async {
//     final response =
//     await http.get(Uri.parse('https://slash-backend.onrender.com/product/?limit=20&page=1'));
//     if (response.statusCode == 200) {
//       List<dynamic> jsonResponse = json.decode(response.body)['data']['products'];
//       return jsonResponse.map((product) => Product.fromJson(product)).toList();
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//       ),
//       body: Center(
//         child: FutureBuilder<List<Product>>(
//           future: futureProducts,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               print('Error: ${snapshot.error}');
//               return Text('Error: ${snapshot.error}');
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   Product product = snapshot.data![index];
//                   return ListTile(
//                     leading: Image.network(product.imageUrl),
//                     title: Text(product.name),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:splash/Features/Data/Models/Product_Model.dart';
import 'package:splash/Features/presentation/view/Screens_Widgets/Details_Screen_Body.dart';

class DetailProductScreen extends StatelessWidget {
  // final Product? product;

  const DetailProductScreen({Key? key,}) : super(key: key);
// this.product
  @override
  Widget build(BuildContext context) {
    // List of image URLs or asset paths
    List<String> imageList = [
      "assets/test.jpg",
      'assets/test.jpg',
      'assets/test.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 22,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Scarf",
          style: TextStyle(color: Colors.black, fontSize: 20),

        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Details_Screen_Body(imageList: imageList),


    );
  }
}


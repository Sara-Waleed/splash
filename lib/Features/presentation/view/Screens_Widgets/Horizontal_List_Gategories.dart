// import 'package:flutter/material.dart';
// import 'package:splash/Features/Data/Models/Product_Model.dart';
// import 'package:splash/Features/presentation/view/Screens_Widgets/CategoryItem.dart';
// import 'package:splash/core/Services/Api_Request.dart'; // Import your ApiService here
//
// class Horizontal_List_Gategories extends StatefulWidget {
//   Horizontal_List_Gategories({Key? key}) : super(key: key);
//
//   @override
//   _Horizontal_List_GategoriesState createState() => _Horizontal_List_GategoriesState();
// }
//
// class _Horizontal_List_GategoriesState extends State<Horizontal_List_Gategories> {
//   final ApiService _apiService = ApiService();
//   List<Brands> brands = []; // Provide a default empty list
//
//   @override
//   void initState() {
//     super.initState();
//     fetchBrands();
//   }
//
//   Future<void> fetchBrands() async {
//     try {
//       final List<Brands> fetchedBrands = await _apiService.fetchBrands();
//       setState(() {
//         brands = fetchedBrands;
//       });
//     } catch (e) {
//       // Handle error
//       print('Error fetching brands: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100, // Adjust height as needed
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: brands.length,
//         itemBuilder: (context, index) {
//           final brand = brands[index];
//           return CategoryItem(
//             title: brand.brandName,
//             imagePath: brand.brandLogoImagePath,
//           );
//         },
//       ),
//     );
//   }
// }

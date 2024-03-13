// import 'package:flutter/material.dart';
// import 'package:splash/Features/presentation/view/Screens/Category_Screen.dart';
//
// class CategoryItem extends StatelessWidget {
//   final String title;
//   final String imagePath;
//
//   CategoryItem({required this.title, required this.imagePath});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => CategoryScreen(categoryTitle: title),
//           ),
//         );
//       },
//       child: Container(
//         width: 100,
//         margin: EdgeInsets.symmetric(horizontal: 10),
//         decoration: BoxDecoration(
//           color: Colors.black12,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(imagePath, height: 50, width: 50,),
//             SizedBox(height: 5),
//             Text(
//               title,
//               style: TextStyle(color: Colors.black12, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

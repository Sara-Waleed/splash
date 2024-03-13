import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:splash/Features/presentation/view/Screens/Detailed_Info.dart';
import 'package:splash/Features/presentation/view/Screens/HomePage.dart';
import 'package:splash/Features/presentation/view/Screens/test.dart';
import 'package:splash/core/utils/Cubit/popular_products_cubit.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
Widget build(BuildContext context) {
  return BlocProvider(
    create: (context) =>  PopularProductsCubit(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WishListScreen(),
    ),
  );
}
}



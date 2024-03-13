import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:splash/Features/Data/Models/Product_Model.dart';


class Details_Screen_Body extends StatelessWidget {
  const Details_Screen_Body({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 330,
              viewportFraction: 1.0,
              autoPlay: true,
              enlargeCenterPage: false,
            ),
            items:imageList
                .map(
                  (image) => Image.asset(
                image ,
                fit: BoxFit.cover,
              ),
            )
                .toList(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "product",
                        // style: AppFont.bold.copyWith(fontSize: 23),
                      ),
                    ),
                    Text(
                      "Brand_Name",
                      //style: AppFont.bold.copyWith(fontSize: 23),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                SizedBox(height: 5),
                Text(
                  "Scarf",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 5,
                      direction: Axis.horizontal,
                      itemSize: 15,
                      itemCount: 5,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: 5),
                    Text('(10)'),
                  ],
                ),
                SizedBox(height: 15),
                Text("Descripion",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 15),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elitconsectetur adipiscing elitconsectetur adipiscing elitconsectetur adipiscing elitconsectetur adipiscing elit...",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    height: 1.4,
                    letterSpacing: .2,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Divider(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rating & Review",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.navigate_next)
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 50,),
          Container(
            width: 400,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                onPressed: () {
                  // Add to cart logic
                },
                child: Text(
                  "Add to cart".toUpperCase(),
                  style:TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:splash/Features/presentation/view/Screens/Detailed_Info.dart';
import 'package:splash/Features/presentation/view/Screens/test.dart';
import 'package:splash/Features/presentation/view/Screens_Widgets/Popular_Products_List.dart';

import 'package:flutter/material.dart';
import 'package:splash/Features/Data/Models/Product_Model.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Spalsh.",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              // Navigate to cart screen
            },
          ),
        ],
      ),
      body: WishlistItemList(),
    );
  }
}

class WishlistItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: dummyWishlistItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 300,
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        final item = dummyWishlistItems[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProductScreen()));
            },
            child: Card(
              elevation: 2,
              margin: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    item.imageUrl,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      item.productName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.productPrice,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 10,),
                              Icon(Icons.shopping_cart),
                            ],
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class WishListItem {
  final String productName;
  final String productPrice;
  final String imageUrl;

  WishListItem({
    required this.productName,
    required this.productPrice,
    required this.imageUrl,
  });
}

final List<WishListItem> dummyWishlistItems = List.generate(
  10,
      (index) => WishListItem(
    productName: 'Product ${index + 1}',
    productPrice: '\$${(index + 1) * 10}',
    imageUrl: 'assets/test.jpg',
  ),
);






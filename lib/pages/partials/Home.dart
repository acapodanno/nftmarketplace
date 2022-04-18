import 'package:flutter/material.dart';
import 'package:nftmarketplace/model/NFTProductModel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8),
      itemCount: products.length,
      itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(borderRadius:BorderRadius.circular(8),
                  child:Image.network(
                    products[index].imageUrl,
                    fit: BoxFit.cover,
                  ))),
              SizedBox(
                height: 10,
              ),
              Text(
                products[index].name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                products[index].price.toString() + "£",
                style: TextStyle(fontSize: 14),
              )
            ],
          )),
    );
  }
}

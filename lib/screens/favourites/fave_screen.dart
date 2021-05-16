import 'package:flutter/material.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/screens/cart/widgets/button_confirm_widget.dart';
import 'package:food_app/screens/cart/widgets/card_cart_widget.dart';
import 'package:food_app/screens/cart/widgets/item_widget.dart';
import 'package:food_app/screens/favourites/widgets/fav_card_widget.dart';

class FaveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productCart = [
      {
        "name": "Burger de Frango",
        "price": 23.00,
        "description": "Chiken Burger",
        "imageUrl": AppImage.beefBurger,
      },
    ];

    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(
            children: [
              Text(
                "Favorites",
                style: AppTextStyles.titleSemiBold,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: productCart.length,
                  itemBuilder: (context, index) {
                    var product = productCart[index];
                    return FavCardWidget(
                      title: product["name"].toString(),
                      image: product["imageUrl"].toString(),
                      price: double.parse(product["price"].toString()),
                      description: product["description"].toString(),
                      onFave: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class FavCardWidget extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final String description;
  final Function onFave;

  const FavCardWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    required this.description,
    required this.onFave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(-4, -4), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.black45.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(4, 4), // changes position of shadow
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(flex: 3, child: Image.asset(this.image)),
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      this.title,
                      style: AppTextStyles.subtitle17,
                    ),
                    InkWell(
                      onTap: () => this.onFave(),
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.red,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: AppColors.aquaHaze,
                        )),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: Text(
                                this.description,
                                style: AppTextStyles.subtitle17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "R\$ ${this.price.toStringAsFixed(2)}",
                  style: AppTextStyles.subtitle17,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

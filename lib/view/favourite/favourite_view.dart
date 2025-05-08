import 'package:flutter/material.dart';
import 'package:food_delivery/common_widget/round_button.dart';


import '../../common/color_extension.dart';
import '../../common_widget/cart_item_row.dart';
import '../../common_widget/favourite_row.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({super.key});

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {

  List listArr = [
    {
      "Name": "Kiwi Juice",
      "icon": "assets/img/kiwi-juice.png",
      "qty": "250",
      "Unit": "ml, price",
      "price": "100 ₹",
    },
    {
      "Name":"Sandwich",
      "icon":"assets/img/sandwich.png",
      "qty": "1",
      "Unit": "Unit, Price",
      "price": "100 ₹"
    },
    {
      "Name": "Egg Chicken White",
      "icon": "assets/img/egg_chicken_white.png",
      "qty": "6",
      "Unit": "pcs, price",
      "price": "100 ₹",
    },
    {
     "Name": "Maggie",
      "icon": "assets/img/noodles.png",
      "qty": "1",
      "Unit": "packet, price",
      "price": "70 ₹",
    },
    {
      "Name": "Burger",
      "icon": "assets/img/burger.png",
      "qty": "1",
      "Unit": "Unit, price",
      "price": "65 ₹",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text("Favourites", style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20, 
                          fontWeight: FontWeight.w700),
                          ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            itemCount: listArr.length,
            separatorBuilder: (context, index) => const Divider(color: Colors.black26, height: 1,),
            itemBuilder: (context, index) {
              var pObj = listArr[index] as Map? ??  {};
              return FavouriteRow(
                pObj: pObj,
                onPressed: () {
                  
                },
              );
          }),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundButton(title: "Add All To Cart", onPressed: (){})
              ],

            ),
          )
          
        ],
      ),
    );
  }

}
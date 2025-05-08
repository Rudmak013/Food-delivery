import 'package:flutter/material.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/view/my_cart/checkout_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/cart_item_row.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {

  List cartArr = [
    {
      "Name": "Kiwi Juice",
      "icon": "assets/img/kiwi-juice.png",
      "qty": "250",
      "Unit": "ml, price",
      "price": "100 ₹",
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
        title: Text("My Cart", style: TextStyle(
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
            padding: const EdgeInsets.all(20.0),
            itemCount: cartArr.length,
            separatorBuilder: (context, index) => const Divider(color: Colors.black26, height: 1,),
            itemBuilder: (context, index) {
              var pObj = cartArr[index] as Map? ??  {};
              return CartItemRow(pObj: pObj,);
          }),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                MaterialButton(onPressed: (){
                  showCheckout();
                },
    height: 60,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
    minWidth: double.maxFinite,
    elevation: 0.1,
    color: TColor.primary,
     child: Stack(
      alignment: Alignment.centerRight,
       children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             
             Text(
                          "Go to Checkout",
                          style:  TextStyle(
                            color: Colors.white,
                            fontSize: 18, 
                            fontWeight: FontWeight.w600),
                            ),
         
                            
           ],
         ),


                          Container(
                            decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5),
                          ),

                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),

                            child: const Text(
                                      "\335 ₹",
                                      style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: 12, 
                                      fontWeight: FontWeight.w600),
                            ),),

       ],
     ),)
            ],),
          )
          
        ],
      ),
    );
  }

  void showCheckout(){

    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: false,
      context: context, builder: (context) {
      return const CheckoutView();
    });
  }
}
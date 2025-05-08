import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/category_cell.dart';
import 'package:food_delivery/common_widget/product_cell.dart';
import 'package:food_delivery/view/home/product_details_view.dart';

import '../../common_widget/section_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();
  
  List exclusiveOfferArr = [
    {
      "Name": "Maggie",
      "icon": "assets/img/noodles.png",
      "qty": "1",
      "Unit": " packet,Price",
      "price": "70 ₹",
    },
    {
      "Name": "Pasta",
      "icon": "assets/img/pasta.png",
      "qty": "1",
      "Unit": " packet,Price",
      "price": "80 ₹",
    },
  ];

  List BestSellingArr = [
    {
      "Name": "Burger",
      "icon": "assets/img/burger.png",
      "qty": "1",
      "Unit": " Unit,Price",
      "price": "65 ₹",
    },
    {
      "Name": "Sandwich",
      "icon": "assets/img/sandwich.png",
      "qty": "1",
      "Unit": " Unit,Price",
      "price": "100 ₹",
    }
  ];
 
  List SabjiArr = [
    {
      "Name": "Paneer Butter Masala",
      "icon": "assets/img/salad.png",
      "qty": "1",
      // "color": Color(0xff53B175),
      "Unit":"g,Price",
      "price": "245 ₹",
    },
    {
      "Name": "Cheese Butter Masala",
      "icon": "assets/img/salad.png",
      "qty": "1",
      "Unit": "g,Price",
      "price": "300 ₹",
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return 

    
        
      Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/MealMonkey1_logo.png",width: 85,),
                  ],
                ),

                const SizedBox(height: 4,),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/location.png", width: 17, height: 17,),
                    const SizedBox(width: 8,),
                    Text("Nadiad, Gujarat", style: TextStyle(
                          color: TColor.darkGray,
                          fontSize: 18, 
                          fontWeight: FontWeight.w600),
                          ),
                  ],
                ),

                const SizedBox(height: 15,),
                     
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                          controller: txtSearch,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Image.asset("assets/img/search.png",width: 20, height: 20,),
                            ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search Store",
                          hintStyle: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                          ),
                    ),
                  ),
                ),
                ),

                const SizedBox(height: 15,),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                Container(
                  width: double.maxFinite,
                  height: 115,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset("assets/img/banner_top.png", fit: BoxFit.cover,),
                ),
                ),    

               SectionView(
                title: "Exclusive Offer",
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {
                  
                },
               ), 

               SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: exclusiveOfferArr.length,
                  itemBuilder: (context, index) {
                    var pObj = exclusiveOfferArr [index] as Map? ?? {};

                    return ProductCell(pObj: pObj, 
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetails()));
                      },
                      onCart: () {},
                    );
                  }),
                  ),

                  SectionView(
                title: "Best Selling",
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {
                  
                },
               ), 

               SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: BestSellingArr.length,
                  itemBuilder: (context, index) {
                    var pObj = BestSellingArr [index] as Map? ?? {};

                    return ProductCell(pObj: pObj, 
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetails()));
                      },
                      onCart: () {},
                    );
                  }),
                  ),

                   SectionView(
                title: "Sabji",
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {
                  
                },
               ), 

               SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: SabjiArr.length,
                  itemBuilder: (context, index) {
                    var pObj = SabjiArr [index] as Map? ?? {};

                    return CategoryCell(pObj: pObj, 
                      onPressed: () {},
                    );
                  }),
                  ),

                  const SizedBox(height: 20,),
                    
          ],
        ),
    ),
  ),
);
      

    
  }
}
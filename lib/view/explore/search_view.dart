import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/explore_cell.dart';
import 'package:food_delivery/common_widget/product_cell.dart';
import 'package:food_delivery/view/explore/filter_view.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key,});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
TextEditingController txtSearch = TextEditingController();
 
  List searchArr = [
    {
      "Name": "Egg Chiken Red",
      "icon": "assets/img/egg_chicken_red.png",
      "qty": "4",
      "Unit": "pcs, price",
      "price": "80 ₹",
    },
    {
      "Name": "Egg Chicken White",
      "icon": "assets/img/egg_chicken_white.png",
      "qty": "6",
      "Unit": "pcs, price",
      "price": "100 ₹",
    },
    {
     "Name": "Egg Pasta",
      "icon": "assets/img/egg_pasta.png",
      "qty": "500",
      "Unit": "g, price",
      "price": "150 ₹",
    },
    {
      "Name": "Egg Noodles",
      "icon": "assets/img/egg_noodles.png",
      "qty": "500",
      "Unit": "g, price",
      "price": "150 ₹",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    
    return 

    
        
      Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading:  IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Image.asset("assets/img/back.png",
         width: 20, height: 20,)),

         actions: [
           IconButton(onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterView()));
      }, icon: Image.asset("assets/img/filter_ic.png",
         width: 20, height: 20,)),
         ],
        title: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                          controller: txtSearch,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 16),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Image.asset("assets/img/search.png",width: 20, height: 20,),
                            ),
                          suffixIcon: IconButton(onPressed: (() {
                            txtSearch.text = "";
                            FocusScope.of(context).requestFocus(FocusNode());
                            setState(() {
                              
                            });
                          }), icon: Image.asset("assets/img/t_close.png",width: 15, height: 15,
                          ),
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
      body: GridView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.75, crossAxisSpacing: 15, mainAxisSpacing: 15), 
                          itemCount: searchArr.length,
                          itemBuilder: ((context, index) {
                          var pObj = searchArr[index] as Map? ?? {};
                          return ProductCell(pObj: pObj,
                          margin: 0,
                          weight: double.maxFinite,
                          onPressed: () {},
                          onCart: () {},
                          );
                        })
                        ),
              );
      

    
  }
}
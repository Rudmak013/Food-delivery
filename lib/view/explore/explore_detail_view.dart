import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/explore_cell.dart';
import 'package:food_delivery/common_widget/product_cell.dart';
import 'package:food_delivery/view/explore/filter_view.dart';

class ExploreDetailView extends StatefulWidget {
  final Map eObj;
  const ExploreDetailView({super.key, required this.eObj});

  @override
  State<ExploreDetailView> createState() => _ExploreDetailViewState();
}

class _ExploreDetailViewState extends State<ExploreDetailView> {
  
 
  List listArr = [
    {
      "Name": "Watermelon Juice",
      "icon": "assets/img/watermelon-juice.png",
      "qty": "250",
      "Unit": "ml, price",
      "price": "80 ₹",
    },
    {
      "Name": "Pineapple Juice",
      "icon": "assets/img/pineapple-juice.png",
      "qty": "250",
      "Unit": "ml, price",
      "price": "100 ₹",
    },
    {
     "Name": "Kiwi Juice",
      "icon": "assets/img/kiwi-juice.png",
      "qty": "250",
      "Unit": "ml, price",
      "price": "100 ₹",
    },
    {
      "Name": "Grape Juice",
      "icon": "assets/img/grape-juice.png",
      "qty": "250",
      "Unit": "ml, price",
      "price": "70 ₹",
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
        title: Text(widget.eObj["Name"].toString(), style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20, 
                          fontWeight: FontWeight.w700),
                          ),
      ),
      body: GridView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.75, crossAxisSpacing: 15, mainAxisSpacing: 15), 
                    itemCount: listArr.length,
                    itemBuilder: ((context, index) {
                    var pObj = listArr[index] as Map? ?? {};
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
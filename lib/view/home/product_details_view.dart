import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
   

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return 
      Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: media.width * 0.8,
                      decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/img/pasta.png",
                        width: media.width * 0.9,
                      ),
                    ),

                     SafeArea(
        child:

                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Image.asset("assets/img/back.png",
                  width: 20, height: 20,)),

                 actions: [IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Image.asset("assets/img/share.png",
                  width: 20, height: 20,)),]
              ),),
                  ],
                ),

                
            
               
                SizedBox(height: media.width * 0.15,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [

                          Expanded(
                            child: Text("Pasta", style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 24, 
                            fontWeight: FontWeight.w700),
                            ),
                          ),

                          IconButton(onPressed: () {
                        }, icon: Image.asset("assets/img/fav.png",
                           width: 25, height: 25,)),
                        ],
                      ),

                      Text("1 Packet,Price", style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16, 
                            fontWeight: FontWeight.w600),
                            ),

                             const SizedBox(height: 15,),

                            Row(
                        children: [

                          InkWell(
                            onTap: () {
                              
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset("assets/img/subtract.png", width: 20, height: 20,),
                              ),
                          ),

                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: TColor.placeholder.withOpacity(0.5), width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                            alignment: Alignment.center,
                            child:Text("1", style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 18, 
                            fontWeight: FontWeight.w600),
                            ),
                    ),

                    InkWell(
                            onTap: () {
                              
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset("assets/img/add_green.png", width: 20, height: 20,),
                            ),
                          ),

                          const Spacer(),

                          Text("\$1", style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 24, 
                            fontWeight: FontWeight.w700),
                            ),
                        ],
                      ),

                            const SizedBox(height: 15,),

                            const Divider(color: Colors.black26, height: 1,),

                            const SizedBox(height: 8,),

                             Row(
                        children: [

                          Expanded(
                            child: Text("Product Detail", style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16, 
                            fontWeight: FontWeight.w600),
                            ),
                          ),

                          IconButton(onPressed: () {
                        }, icon: Image.asset("assets/img/detail_open.png",
                           width: 15, height: 15,)),
                        ],
                      ),

                      Text("Italian pasta (pronounced “PAS-tah”) is a collective name for a category of food made from wheat flour and water, sometimes with egg. The name refers to the resulting dough (pasta also means “dough”) that is rolled out and cut into various shapes. Pasta is cooked in water and served with a sauce.", style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 13, 
                            fontWeight: FontWeight.w500),
                            ),

                            const SizedBox(height: 15,),

                            const Divider(color: Colors.black26, height: 1,),

                            const SizedBox(height: 8,),

                             Row(
                        children: [

                          Expanded(
                            child: Text("Recipie", style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16, 
                            fontWeight: FontWeight.w600),
                            ),
                          ),

                    //       Container(
                    //         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    //         height: 45,
                    //         decoration: BoxDecoration(
                    //         color: TColor.placeholder,
                    //         border: Border.all(color: TColor.placeholder.withOpacity(0.5), width: 1),
                    //         borderRadius: BorderRadius.circular(15),
                    //       ),
                    //         alignment: Alignment.center,
                    //         child:Text("1", style: TextStyle(
                    //         color: TColor.primaryText,
                    //         fontSize: 9, 
                    //         fontWeight: FontWeight.w600),
                    //         ),
                    // ),

                          IconButton(onPressed: () {
                        }, icon: Image.asset("assets/img/next.png",
                           width: 15, height: 15,
                           color: TColor.primaryText,
                           )),
                        ],
                      ),

                            const SizedBox(height: 8,),

                            const Divider(color: Colors.black26, height: 1,),

                            const SizedBox(height: 8,),

                             Row(
                        children: [

                          Expanded(
                            child: Text("Review", style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 16, 
                            fontWeight: FontWeight.w600),
                            ),
                          ),

                          IgnorePointer(
                            ignoring: true,
                            child: RatingBar.builder(
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 15,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color:  Color(0xffF3603F),
                            ),
                            onRatingUpdate: (rating) {
                            print(rating);
                                                    },
                                                  ),
                          ),

                          IconButton(onPressed: () {
                        }, icon: Image.asset("assets/img/next.png",
                           width: 15, height: 15,
                           color: TColor.primaryText,
                           )),
                        ],
                      ),

                      const SizedBox(height: 8,),


                       RoundButton(title: "Add to Basket", onPressed: (){

              },),
                    ],
                  ),
                )
            
                // Text("Login", style: TextStyle(
                //       color: TColor.primaryText,
                //       fontSize: 26, 
                //       fontWeight: FontWeight.w600),),
                //       SizedBox(height: media.width * 0.03,),

                //        Text("Enetr your Email and Password", style: TextStyle(
                //       color: TColor.secondaryText,
                //       fontSize: 16, 
                //       fontWeight: FontWeight.w500),),

                //       SizedBox(height: media.width * 0.1,),

                      

                      

              
              ],
          ),
        ),
    );
  }
}
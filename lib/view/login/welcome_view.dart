import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/view/login/sign_in_view.dart';
import '../../common_widget/round_button.dart';
import 'package:food_delivery/view/login/sign_in_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        // ignore: unnecessary_string_escapes
        Image.asset("assets/img/welcome_bg2.png" ,
        width: media.width,
        height: media.height,
        fit: BoxFit.cover),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

            Image.asset("assets/img/MealMonkey1_logo.png", width: 500, height: 320,),
            const SizedBox(height: 7
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const  Text(
                  "  Welcome\nto our store",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48, 
                    fontWeight: FontWeight.w600),
                    ),
              ],
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                  "Get your special and Magical Incridients",
                  style:  TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                    fontSize: 18, 
                    fontWeight: FontWeight.w600),
                    ),
              ],
            ),


            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RoundButton(title: "Get Started", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                const SignInView()));
              },),
            ),

            const SizedBox(height: 46,),
            ],
          ),
        )
      ],),
    );
  }
}
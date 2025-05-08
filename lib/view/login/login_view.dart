import 'package:flutter/material.dart';
import 'package:food_delivery/common_widget/line_textfield.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/view/login/sign_in_view.dart';
import 'package:food_delivery/view/login/sign_up_view.dart';
import 'package:food_delivery/view/main_tabview/main_tabview.dart';
import 'package:food_delivery/view_model/login_view_model.dart';
import 'package:get/get.dart';
import '../../common/color_extension.dart';


class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return 

    Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset("assets/img/bottom_bg.png", width: media.width, height: media.height, fit: BoxFit.cover,),
      ),
        
      Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Image.asset("assets/img/back.png",
         width: 20, height: 20,)),
         ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/MealMonkey1_logo.png",width: 150,),
                  ],
                ),
                SizedBox(height: media.width * 0.15,),
            
                Text("Login", style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 26, 
                      fontWeight: FontWeight.w600),),
                      SizedBox(height: media.width * 0.03,),

                       Text("Enetr your Email and Password", style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 16, 
                      fontWeight: FontWeight.w500),),

                      SizedBox(height: media.width * 0.1,),

                      LineTextField(title: "Email", controller: loginVM.txtEmail.value, keyboardType: TextInputType.emailAddress, placeholder: "Enter your email address"),
                      

                      SizedBox(height: media.width * 0.07,),
                      
                      Obx(() => 
                      LineTextField(title: "Password", controller: loginVM.txtPassword.value, obscureText: !loginVM.isShowPassword.value, placeholder: "Enter your Password",right: IconButton(onPressed: () {
                      loginVM.showPassword();
                    }, icon: Icon(!loginVM.isShowPassword.value ? Icons.visibility_off : Icons.visibility, color: TColor.textTittle,)),
                    ),),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      TextButton(onPressed: (){

                      }, child: Text("Forgot Password", style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 14, 
                      fontWeight: FontWeight.w500),),)
                  ],
                ),
                      
                       SizedBox(height: media.width * 0.05,),

                       RoundButton(title: "Login", onPressed: (){
                          loginVM.serviceCallLogin();

                        // Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        // const MainTabView()));
              },),

              SizedBox(height: media.width * 0.02,),

              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupView()));

                      }, child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Text("Don't have an Account?", style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 14, 
                      fontWeight: FontWeight.w600),),

                      const SizedBox(width: 8,),

                      Text("SignUp", style: TextStyle(
                      color: TColor.primary,
                      fontSize: 14, 
                      fontWeight: FontWeight.w600),),
                      ],) )
                  ],
                ),
              ],),
          ),
        ),
      ),
    )
      ]);

    
  }
}
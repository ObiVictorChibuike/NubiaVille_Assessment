// ignore_for_file: prefer_const_constructors
import 'package:assessment/constants/asset_path.dart';
import 'package:assessment/constants/color_palette.dart';
import 'package:assessment/src/custom_shared_widgets/cutom_formfield_widget.dart';
import 'package:assessment/src/screens/auth_screens/views/sign_up.dart';
import 'package:assessment/src/screens/auth_screens/widgets/clipper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../custom_shared_widgets/button_widget.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen(
      {Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isObscuredText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ClipPath(
            clipper: ClippingClass(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: primaryGradient),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  )),
            )),
        Container(
          padding: const EdgeInsets.only(left: 35, top: 80),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Expense\nManager", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),),
              SizedBox(height: 5,),
              Align(alignment: Alignment.topCenter,
                child: Lottie.asset(AssetPath.welcome, height: 150, width: 150),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 35, left: 35, top: MediaQuery.of(context).size.height * 0.5),
            child: Column(children: [
              FormFieldWidget(
                hintText: "Email",
              ),
              const SizedBox(
                height: 30,
              ),
              FormFieldWidget(
                maxLines: 1,
                hintText: "Password", obscureText: isObscuredText,
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    isObscuredText = !isObscuredText!;
                  });
                }, icon: Icon(isObscuredText == false ? Icons.visibility : Icons.visibility_off, color: Colors.black,)),
              ),
              const SizedBox(
                height: 40,
              ),
              ButtonWidget(onPressed: (){
                Get.to(()=> const SignUp());
              },
                buttonText: "LOGIN",
                height: 50, borderRadius: 8, buttonTextStyle: TextStyle(color: kWhite),
                width: double.maxFinite, buttonColor: Colors.black,
              ),
              const SizedBox(height: 40,),
              Align(alignment: Alignment.bottomCenter,
                child: RichText(textAlign: TextAlign.center, text: const TextSpan(text: "Don't have an account?  ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12,),
                    children: [
                      TextSpan(text: "Create Account", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, decoration: TextDecoration.underline)),
                    ]
                )),
              ),
            ]),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

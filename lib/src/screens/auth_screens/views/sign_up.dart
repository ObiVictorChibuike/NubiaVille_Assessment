import 'package:assessment/src/screens/dashboard/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/asset_path.dart';
import '../../../../constants/color_palette.dart';
import '../../../custom_shared_widgets/button_widget.dart';
import '../../../custom_shared_widgets/cutom_formfield_widget.dart';
import '../widgets/clipper.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: primaryGradient),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  )),
            )),
        Container(
          padding: const EdgeInsets.only(left: 35, top: 60),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create\nAccount With", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Text("Expense\nManager", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),),

              Align(alignment: Alignment.topCenter,
                child: Lottie.asset(AssetPath.createAccount, height: 150, width: 180),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 35, left: 35,
                top: MediaQuery.of(context).size.height * 0.5),
            child: Column(children: [
              FormFieldWidget(
                hintText: "Name",
              ),
              const SizedBox(
                height: 30,
              ),
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
                Get.to(()=> const HomeScreen());
              },
                buttonText: "REGISTER",
                height: 50, borderRadius: 8, buttonTextStyle: TextStyle(color: kWhite),
                width: double.maxFinite, buttonColor: Colors.black,
              ),
              const SizedBox(height: 40,),
              Align(alignment: Alignment.bottomCenter,
                child: RichText(textAlign: TextAlign.center, text: const TextSpan(text: "Already have an account?  ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12,),
                    children: [
                      TextSpan(text: "Login", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, decoration: TextDecoration.underline)),
                    ]
                )),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

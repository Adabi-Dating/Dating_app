import 'dart:ui';

import 'package:first_app/authenticationScreen/registration_screen.dart';
import 'package:first_app/widgets/custom_text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(
                height: 160,
              ),

              // Image.asset(
              //   "images/logo.png",
              //   width: 200,
              // ),
              Image.asset(
                "images/logo.png",
                width: 200,
              ),

              const Text(
                "Welcome Squisly",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(
                height: 10,
              ),


              const Text(
                "Please login to find your best Match.",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(
                height: 14,
              ),

              //email
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                   editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 12,
              ),


              //password
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: passwordTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),

              const SizedBox(
                height: 20,
              ),


              //login button
              Container(
                width: MediaQuery.of(context).size.width - 36,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: InkWell(
                  onTap: ()
                  {

                  },
                  child: const Center(
                    child: Text(
                        "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),



              //Don,t have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  const Text(
                   "Don't have an account? ",
                   style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  InkWell(
                    onTap: ()
                    {
                    Get.to(RegistrationScreen());
                    },
                    child: const Text
                      (
                      "Register Now",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),


              showProgressBar == true
                  ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  : Container(),


            ],
          ),
        ),
      ),
    );
  }
}

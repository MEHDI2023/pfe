import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:glassmorphism/glassmorphism.dart';

import '../../../apiService/sign_up.dart';
import '../../../customs/custom_button.dart';
import '../../../customs/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _nmuberPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(1.27, 1.54),
                  end: const Alignment(0, 0),
                  colors: [
                Colors.green.shade200,
                const Color.fromARGB(255, 51, 51, 51)
              ])),
          child: Stack(
            children: [
              Positioned(
                  bottom: 500,
                  left: 100,
                  top: 0,
                  right: 100,
                  child: Image.asset(
                      'assets/images/img_3d_food_icon_by_199x210.png')),
              Positioned(
                  bottom: 230,
                  left: 270,
                  top: 1,
                  right: 0,
                  child: Image.asset(
                      'assets/images/img_3d_food_icon_by_166x139.png')),
              Positioned(
                  bottom: 0,
                  left: 10,
                  top: 690,
                  right: 220,
                  child: Image.asset(
                      'assets/images/img_3d_food_icon_by_200x228.png')),
              Positioned(
                bottom: 65,
                left: 45,
                top: 300,
                right: 45,
                child: GlassmorphicContainer(
                    width: 331,
                    height: 530,
                    borderRadius: 20,
                    blur: 4,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color((0xFFFFFFFF)).withOpacity(0.1),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Form(
                          key: _formkey,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //button facebook login
                                    MaterialButton(
                                      onPressed: () {},
                                      child: SvgPicture.asset(
                                          'assets/images/img_facebook.svg',
                                          semanticsLabel: 'Acme Logo'),
                                    ),
                      
                                    SizedBox(
                                        height: 40,
                                        child: VerticalDivider(
                                            width: 2,
                                            thickness: 2,
                                            color: Colors.white.withOpacity(1))),
                                    //button google login
                                    MaterialButton(
                                      onPressed: () {},
                                      child: SvgPicture.asset(
                                          'assets/images/img_google.svg',
                                          semanticsLabel: 'Acme Logo'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    labelText: 'Name',
                                    
                                    controller: _nameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                    }),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  labelText: 'E-mail',
                                 
                                  controller: _emailController,
                                  //validation pour email
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    if (!value.contains('@')) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  
                                    labelText: 'First Name',
                                    controller: _firstNameController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your name';
                                      }
                                    }),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                
                                    labelText: 'Number Phone',
                                    controller: _nmuberPhoneController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your Phone';
                                      }
                                    }),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  labelText: 'Password',
                                 
                                  controller: _passwordController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please confirm your password';
                                    }
                                    if (value.length < 6) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                 
                                  labelText: 'Confirm Password',
                                  controller: _passwordController,
                                ),
                                const SizedBox(height: 20),
                                CustomButton(
                                  text: "Sign Up",
                                  onPressed: () async {
                                    if (_formkey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('Processing Data')),
                                      );
                                      try {
                                        await SignUpService.signUp(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                          name: _nameController.text,

                                        );
                                        print("User signed up successfully");
                                        // Navigate to success page or show success popup
                                      } on Exception catch (e) {
                                        if (e.toString().contains(
                                            'Email or name is already in use')) {
                                          // ignore: use_build_context_synchronously
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text("Sign Up Error"),
                                                content: Text(e.toString()),
                                                actions: <Widget>[
                                                  TextButton(
                                                    child: Text("OK"),
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else {
                                          print(
                                              "An unexpected error occurred: $e");
                                          // Optionally show an error popup
                                        }
                                      }
                                    }
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Already have an account?",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Sign in",
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(12, 69, 25, 1)),
                                        ))
                                  ],
                                )
                              ]),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

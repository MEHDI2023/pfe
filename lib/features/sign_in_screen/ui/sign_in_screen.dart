import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:newburger/features/sign_up/ui/sign_up_screen.dart';

import '../../../customs/custom_button.dart';
import '../../../customs/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
   SignInScreen({super.key});

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
                      'assets/images/img_3d_food_icon_by_276x276.png')),
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
                    height: 520,
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
                                height: 65,
                              ),
                            
                               CustomTextFormField(labelText: 'E-mail',controller: _emailController),
                              const SizedBox(height: 20),
                               CustomTextFormField(labelText: 'Password',controller: _passwordController),
                              const SizedBox(height: 20),
                             
                              const SizedBox(height: 40),
                              CustomButton(text: "Sign In",onPressed: (){print("test sign in");},),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: 
                                [
                                  const Text("Don’t have an account?",style: TextStyle(color: Colors.white),),
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                                  }, child: const Text("Sign Up",style: TextStyle(color: Color.fromRGBO(12, 69, 25, 1)),))
                                ],
                              )
                            ]),
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

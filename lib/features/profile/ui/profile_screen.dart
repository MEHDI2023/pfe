import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';

import '../../../customs/custom_app_bar.dart';
import '../../../customs/custom_text_form_field.dart';

class ProfilScreen extends StatelessWidget {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _adresseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  CustomAppBar(
                    mainAxisAlignment: MainAxisAlignment.start,
                    iconButton: IconButton(
                      icon: const Icon(
                        IconlyLight.arrow_left_circle,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement change profile picture functionality
                    },
                    child: const Text('Change profile picture',
                        style: TextStyle(color: Colors.green)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full name",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "poppines",
                              fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextFormField(
                                broderReduis: 25,
                                height: 50,
                                width: 160,
                                labelText: "first name",
                                controller: _firstNameController),
                            const SizedBox(width: 10),
                            CustomTextFormField(
                                broderReduis: 25,
                                height: 50,
                                width: 160,
                                labelText: "last name",
                                controller: _firstNameController),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Address",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "poppines",
                              fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomTextFormField(
                                broderReduis: 25,
                                height: 50,
                                width: 160,
                                labelText: "adresse",
                                controller: _adresseController),
                                const SizedBox(width: 20,),
                            CustomTextFormField(
                                broderReduis: 25,
                                height: 50,
                                width: 160,
                                labelText: "street",
                                controller: _adresseController),
                          ],
                        ),
                        const SizedBox(height: 25),
                        const Text(
                              "Change password",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "poppines",
                                  fontSize: 25),
                            ),
                      ],
                    ),
                  ),
                  
                   
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                           
                            const SizedBox(height: 5,),
                            CustomTextFormField(
                                broderReduis: 25,
                                height: 50,
                                width: 300,
                                labelText: "Current password",
                                controller: _currentPasswordController),
                            const SizedBox(height: 15),
                            CustomTextFormField(
                                broderReduis: 25,
                                height: 50,
                                width: 300,
                                labelText: "New password",
                                controller: _newPasswordController),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Implement save changes functionality
                          },
                          child: Text(
                            'Save changes',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            // Implement save changes functionality
                          },
                          child: Text(
                            'Discard',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

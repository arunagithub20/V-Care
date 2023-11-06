import 'package:flutter/material.dart';
import 'package:getstart/pages/usertype.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Vehicleowner extends StatelessWidget {
  const Vehicleowner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "V CARE",
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background"), fit: BoxFit.cover),
            ),
            child: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 120.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView(
                  children: [
                    //Icon button
                           Align(
                            alignment: Alignment.topLeft, 
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return usertype();
                                }));
                              },
                              icon: Icon(Icons.arrow_back_ios),
                              ),
                              ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Owner's Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'NIC',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    //Contact Number Field
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          // Handle phone number input changes
                          print(number.phoneNumber);
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.always,
                        selectorTextStyle: TextStyle(color: Colors.black),
                        textFieldController: TextEditingController(),
                        inputDecoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          // Add padding to the input field
                        ),
                        formatInput: true,
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    //Password Field
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          labelText: "Password",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //Confirm Password Field
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          labelText: "Confirm Password",
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //Sign Up Button
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 1, 43, 157),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

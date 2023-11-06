import 'package:flutter/material.dart';
import 'package:getstart/pages/getstart.dart';
import 'package:getstart/pages/usertype.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class vcarelogin extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account Created Successfully!'),
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          return SafeArea(
            child: Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/background1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 20.0,
                      bottom: 22.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Form(
                        key: _formKey,
                        child: ListView(
                          children: [
                            const SizedBox(height: 05),
                            //Icon button
                           Align(
                            alignment: Alignment.topLeft, 
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return Onbording();
                                }));
                              },
                              icon: Icon(Icons.arrow_back_ios),
                              ),
                              ),
                            // Add the logo image
                            Image.asset(
                              'images/vcare_logo.png',
                              width: 190, // Adjust the width as needed
                              height: 190, // Adjust the height as needed
                            ),
          
                            const SizedBox(height: 10),
                            IntlPhoneField(
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(width: 100, color: Colors.black),
                                ),
                              ),
                              initialCountryCode: 'LK',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                labelText: 'Password',
                              ),
                              validator: (value) {
                                if (value!.length < 8) {
                                  return 'Please enter at least 8 characters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 25),
                            ElevatedButton(
                              onPressed: () => _submitForm(context),
                              child: Text('Log In'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // Add logic to handle the "Forgot Password?" action
                              },
                              child: Text(
                                "Forgotten Password?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF000916),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            const SizedBox(height: 35),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return usertype();
                                }));
                              },
                              child: Text('Create new account'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " ©",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF000916),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  " Powered by V-CARE",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color(0xFF000916),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
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
              ),
            ),
          );
        },
      ),
    );
  }
}

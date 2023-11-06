import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class sparepartshop extends StatelessWidget {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Account Created Sucessfully!'),
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                    image: AssetImage("assets/background"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Form(
                        key: _formKey,
                        child: ListView(
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Business Name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35)),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a Business Name';
                                  }
                                  return null;
                                }),
                            const SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Business Registration Number',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Location',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35)),
                              ),
                            ),
                            const SizedBox(height: 20),
                            IntlPhoneField(
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  borderSide: BorderSide(),
                                ),
                              ),
                              initialCountryCode: 'LK',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                            ),
                            const SizedBox(height: 40),
                            TextFormField(
                                controller: _passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35)),
                                  labelText: 'Password',
                                ),
                                validator: (value) {
                                  if (value!.length < 8) {
                                    return 'please enter at least 8 digit number ';
                                  }
                                  return null;
                                }),
                            const SizedBox(height: 20),
                            TextFormField(
                                controller: _confirmPasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(35)),
                                  labelText: 'Confirm Password',
                                ),
                                validator: (value) {
                                  if (value != _passwordController.text) {
                                    return 'password do not match';
                                  }
                                  return null;
                                }),
                            const SizedBox(height: 30),
                            Container(
                              height: 46.0,
                              child: ElevatedButton(
                                onPressed: () => _submitForm(context),
                                child: Text('Sign Up'),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35),
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
            ),
          );
        },
      ),
    );
  }
}

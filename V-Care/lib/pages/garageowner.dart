import 'package:flutter/material.dart';
import 'package:getstart/pages/usertype.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class garageowner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
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
                  left: 20.0, right: 20.0, top: 40.0, bottom: 40.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Form(
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
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Business Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Business Registration Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Location',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                        ),
                      ),
                      const SizedBox(height: 30),
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
                      const SizedBox(height: 50),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                          labelText: 'Confirm Password',
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 66.0,
                        child: ElevatedButton(
                          onPressed: () => {},
                          child: Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}

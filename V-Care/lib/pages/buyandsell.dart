import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class buyerseller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BuyerSeller());
  }
}

class BuyerSeller extends StatefulWidget {
  @override
  _BuyerSellerState createState() => _BuyerSellerState();
}

class _BuyerSellerState extends State<BuyerSeller> {
  String condition = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 40.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
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
                    const SizedBox(height: 0), 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose the user type:',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                title: Text('Buyer'),
                                value: 'buyer',
                                groupValue: condition,
                                onChanged: (value) {
                                  setState(() {
                                    condition = value.toString();
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                title: Text('Seller'),
                                value: 'seller',
                                groupValue: condition,
                                onChanged: (value) {
                                  setState(() {
                                    condition = value.toString();
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
                        labelText: 'Confirm Password',
                      ),
                    ),
                    const SizedBox(height: 30),
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
      ),
    );
  }
}
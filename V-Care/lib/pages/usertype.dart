import 'package:flutter/material.dart';
import 'package:getstart/pages/buyandsell.dart';
import 'package:getstart/pages/garageowner.dart';
import 'package:getstart/pages/sparepartsshop.dart';
import 'package:getstart/pages/vcarelogin.dart';
import 'package:getstart/pages/vehicleowner.dart';

class usertype extends StatelessWidget {
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
                    left: 20.0, right: 20.0, top: 50.0, bottom: 40.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Form(
                    child: ListView(
                      children: [
                        // Icon button
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return vcarelogin();
                                }),
                              );
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        DefaultTextStyle.merge(
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          child: const Center(
                            child: Text('Choose Your User Type'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 66.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return Vehicleowner();
                                }),
                              );
                            },
                            child: Text('Vehicle Owner'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(55),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          height: 66.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return sparepartshop();
                                }),
                              );
                            },
                            child: Text('Shop Owner'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(55),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          height: 66.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return garageowner();
                                }),
                              );
                            },
                            child: Text('Garage Owner'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(55),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          height: 66.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return buyerseller();
                                }),
                              );
                            },
                            child: Text('Buyers & Sellers'),
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigo_app/Screens/HomePage/ShareParcel/parcel_bg.dart';
import 'package:navigo_app/constants.dart';

class RecieverForm extends StatefulWidget {
  const RecieverForm({super.key});

  @override
  State<RecieverForm> createState() => _RecieverFormState();
}

class _RecieverFormState extends State<RecieverForm> {
  TextEditingController _recievername = TextEditingController();
  TextEditingController _phonenumber = TextEditingController();
  TextEditingController _houseNoController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _pinController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Material(
        child: ParcelBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Reciever Details Form',
                style: TextStyle(
                  fontFamily: 'Mooli',
                  fontWeight: FontWeight.w900,
                  fontSize: btnFontSize,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _recievername,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 3,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'Reciever Name *',
                    labelStyle: TextStyle(
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                        fontSize: 15),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _phonenumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 3,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'Phone Number *',
                    labelStyle: TextStyle(
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                        fontSize: 15),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _houseNoController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 3,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'House number, FLoor, Building name *',
                    labelStyle: TextStyle(
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                        fontSize: 15),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _streetController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 3,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'Street, Locality, Area *',
                    labelStyle: TextStyle(
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                        fontSize: 15),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _landmarkController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: kPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 3,
                        color: kPrimaryColor,
                      ),
                    ),
                    labelText: 'Landmark (Optional)',
                    labelStyle: TextStyle(
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                        fontSize: 15),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 20),
                          child: TextField(
                            controller: _pinController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 3,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'Pin Code *',
                              labelStyle: TextStyle(
                                  fontFamily: 'Mooli',
                                  color: kPrimaryColor,
                                  fontSize: 15),
                              filled: true,
                              fillColor: kPrimaryLightColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 5),
                          child: TextField(
                            controller: _cityController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 3,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'City *',
                              labelStyle: TextStyle(
                                  fontFamily: 'Mooli',
                                  color: kPrimaryColor,
                                  fontSize: 15),
                              filled: true,
                              fillColor: kPrimaryLightColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 5),
                          child: TextField(
                            controller: _stateController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 3,
                                  color: kPrimaryColor,
                                ),
                              ),
                              labelText: 'State *',
                              labelStyle: TextStyle(
                                  fontFamily: 'Mooli',
                                  color: kPrimaryColor,
                                  fontSize: 15),
                              filled: true,
                              fillColor: kPrimaryLightColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryColor, // Background color
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

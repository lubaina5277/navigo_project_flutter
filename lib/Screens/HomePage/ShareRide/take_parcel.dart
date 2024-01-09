import 'package:flutter/material.dart';
import 'package:navigo_app/Screens/HomePage/ShareParcel/parcel_bg.dart';
import 'package:navigo_app/constants.dart';

class TakeParcelForm extends StatefulWidget {
  const TakeParcelForm({super.key});

  @override
  State<TakeParcelForm> createState() => _TakeParcelFormState();
}

class _TakeParcelFormState extends State<TakeParcelForm> {
  TextEditingController _houseNoController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _pinController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
         body: SingleChildScrollView(
           child: ParcelBackground(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Take Parcel Form',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Mooli',
                    fontSize: btnFontSize,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Text('From Address',
                style: TextStyle(fontSize: 18,
                  fontFamily: 'Mooli',
                ),
                ),
              SizedBox(
                height: 12,
              ),
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
                SizedBox(height: 18,),
                Text('To Address',
                style: TextStyle(fontSize: 18,
                  fontFamily: 'Mooli',
                ),),
                SizedBox(
                height: 12,
              ),
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
                      onPressed: () {
                        
                      },
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
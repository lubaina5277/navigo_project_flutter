import 'package:flutter/material.dart';
import 'package:navigo_app/Screens/HomePage/ShareParcel/parcel_bg.dart';
import 'package:navigo_app/constants.dart';
import 'package:intl/intl.dart';

class SearcRidehForm extends StatefulWidget {
  const SearcRidehForm({super.key});

  @override
  State<SearcRidehForm> createState() => _SearcRidehForm();
}

enum Gender { male, female }

class _SearcRidehForm extends State<SearcRidehForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _housenoController = TextEditingController();
  TextEditingController _streetController = TextEditingController();

  Gender _gender = Gender.male;
  int _quantity = 1;
  var items = [];
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
                'Search Ride Form',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Mooli',
                  fontSize: btnFontSize,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _nameController,
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
                    labelText: 'Name *',
                    labelStyle: TextStyle(
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                        fontSize: 15),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(fontSize: 18, fontFamily: "Mooli"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      Radio(
                        value: Gender.male,
                        groupValue: _gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _gender = Gender.male;
                          });
                        },
                      ),
                      Text('Male'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: Gender.female,
                        groupValue: _gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _gender = Gender.female;
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _ageController,
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
                    labelText: 'Age *',
                    labelStyle: TextStyle(
                      fontFamily: 'Mooli',
                      color: kPrimaryColor,
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _phonenumberController,
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
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _housenoController,
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
                    labelText: 'House number, Floor, Building name *',
                    labelStyle: TextStyle(
                      fontFamily: 'Mooli',
                      color: kPrimaryColor,
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
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
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
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
                    labelText: 'Landmark',
                    labelStyle: TextStyle(
                      fontFamily: 'Mooli',
                      color: kPrimaryColor,
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: kPrimaryLightColor,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: TextField(
                        controller: _pincodeController,
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
                          labelText: 'Pincode *',
                          labelStyle: TextStyle(
                            fontFamily: 'Mooli',
                            color: kPrimaryColor,
                            fontSize: 15,
                          ),
                          filled: true,
                          fillColor: kPrimaryLightColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 10),
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
                            fontSize: 15,
                          ),
                          filled: true,
                          fillColor: kPrimaryLightColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 10),
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
                            fontSize: 15,
                          ),
                          filled: true,
                          fillColor: kPrimaryLightColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      _selectDate(context);
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

  Future<void> _selectDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
        //Get.to(const HomePage());
      });
    }
  }
}

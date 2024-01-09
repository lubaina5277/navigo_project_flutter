import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigo_app/constants.dart';
import './parcel_bg.dart';
import 'package:image_picker/image_picker.dart';

import 'sender_form.dart';

void main() {
  runApp(MaterialApp(
    home: ParcelDetailsForm(),
    debugShowCheckedModeBanner: false,
  ));
}

class ParcelDetailsForm extends StatefulWidget {
  const ParcelDetailsForm({Key? key}) : super(key: key);

  @override
  State<ParcelDetailsForm> createState() => _ParcelDetailsFormState();
}

enum Sensitive { yes, no }

class _ParcelDetailsFormState extends State<ParcelDetailsForm> {
  Sensitive _sensitive = Sensitive.yes;
  TextEditingController _itemName = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  TextEditingController _imgController = TextEditingController();
  TextEditingController _houseNoController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _pinController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  int _quantity = 1;
  var items = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: ParcelBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Parcel Detail Form",
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
                  controller: _itemName,
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
                    labelText: 'Item Name *',
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
                            controller: _weightController,
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
                              labelText: 'Weight *',
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
                            controller: _heightController,
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
                              labelText: 'Height *',
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
                            controller: _widthController,
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
                              labelText: 'Width *',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sensitivity',
                    style: TextStyle(fontSize: 16, fontFamily: "Mooli"),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Switch(
                    value: _sensitive == Sensitive.yes,
                    onChanged: (bool value) {
                      setState(() {
                        _sensitive = value ? Sensitive.yes : Sensitive.no;
                      });
                    },
                    activeTrackColor: kPrimaryColor,
                    activeColor: kPrimaryColor,
                  ),
                  Text(
                    _sensitive == Sensitive.no ? 'Yes' : 'No',
                    style: TextStyle(fontFamily: "Mooli"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quantity',
                    style: TextStyle(fontSize: 16, fontFamily: "Mooli"),
                  ),
                  SizedBox(
                    width: size.width * 0.005,
                  ),
                  DropdownButton<int>(
                    value: _quantity,
                    onChanged: (int? newValue) {
                      setState(() {
                        _quantity = newValue!; // Use _quantity here
                      });
                    },
                    items: List.generate(20, (index) {
                      return DropdownMenuItem<int>(
                        value: index + 1,
                        child: Text('${index + 1}'),
                      );
                    }),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _imgController,
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
                    filled: true,
                    hintStyle: TextStyle(
                      fontFamily: 'Mooli',
                      fontSize: 15,
                    ),
                    hintText: "Upload the Photo",
                    fillColor: kPrimaryLightColor,
                    suffixIcon: IconButton(
                      onPressed: () async {
                          final pickedFile = await ImagePicker()
                              .getImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            // Update the text field with the image path
                            _imgController.text = pickedFile.path;
                          }
                      },
                      icon: Icon(
                        Icons.camera,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  readOnly: true,
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
                    onPressed: () {
                      Get.to(const SenderForm());
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

import 'package:flutter/material.dart';
import 'package:navigo_app/Screens/HomePage/ShareParcel/parcel_bg.dart';
import 'package:navigo_app/constants.dart';

class ShareRideForm extends StatefulWidget {
  const ShareRideForm({super.key});

  @override
  State<ShareRideForm> createState() => _ShareRideFormState();
}

class _ShareRideFormState extends State<ShareRideForm> {
  TextEditingController _selectVehicle = TextEditingController();
  TextEditingController _vehicleNumber = TextEditingController();
  TextEditingController _houseNoController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _pinController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  var items = ['2 Wheeler', '4 Wheeler'];
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2023),
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: ParcelBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Parcel Detail Form",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Mooli',
                  fontSize: btnFontSize,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryLightColor,
                        ),
                        child: TextField(
                          controller: _selectVehicle,
                          readOnly: true, // Make the text field non-editable
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                width: 3,
                                color: kPrimaryColor,
                              ),
                            ),
                            labelText: 'Select Vehicle',
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Mooli',
                              color: kPrimaryColor,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Mooli',
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuButton<String>(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: kPrimaryColor,
                      ),
                      onSelected: (String value) {
                        _selectVehicle.text = value;
                      },
                      itemBuilder: (BuildContext context) {
                        return items.map<PopupMenuItem<String>>((String value) {
                          return PopupMenuItem(
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Mooli',
                                color: kPrimaryColor,
                              ),
                            ),
                            value: value,
                          );
                        }).toList();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  controller: _vehicleNumber,
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
                    labelText: 'Vehicle Number *',
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
              GestureDetector(
                onTap: () {
                  _selectDate(
                      context); // Open the date picker when the icon is tapped
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextField(
                    readOnly: true,
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
                      hintText: "${selectedDate.toLocal()}".split(' ')[0],
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Mooli',
                        color: kPrimaryColor,
                      ),
                       filled: true,
                      fillColor: kPrimaryLightColor,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _selectDate(
                              context); // Open the date picker when the icon is tapped
                        },
                        child: Icon(
                          Icons.calendar_today,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
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

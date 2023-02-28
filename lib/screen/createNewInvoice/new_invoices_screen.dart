import 'dart:io';

import 'dart:ui';
import 'package:currencylistpicker/currency_selection_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:currencylistpicker/currencylistpicker.dart';
import 'package:date_field/date_field.dart';

class NewInvoice extends StatefulWidget {
  const NewInvoice({Key? key}) : super(key: key);

  @override
  State<NewInvoice> createState() => _NewInvoiceState();
}

class _NewInvoiceState extends State<NewInvoice> {
  String _platformVersion = 'Unknown';
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on Platform catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await CurrencyListPicker.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height + 100.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: MediaQuery.of(context).size.height + 90.h,
                    width: scaler.getWidth(95),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF2F2F2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        //Form
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            child: Text(
                              'INVOICE',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 24,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        GestureDetector(
                          onTap: () => pickImage(),
                          child: Container(
                            child: Stack(
                              children: [
                                // _image != null
                                //     ?
                                //   CircleAvatar(
                                //   radius: 64,
                                //   backgroundImage: MemoryImage(_image!),
                                // )
                                //     : const
                                image != null
                                    ? Image.file(
                                  image!,
                                  width: 34.w,
                                  height: 14.h,
                                  fit: BoxFit.cover,
                                )
                                    : Container(
                                  height: 15.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.5.h,
                                      color: Color(
                                          0xFFFFFFFF), // red as border color
                                    ),
                                    color: Color(0xFFF2F2F2),
                                  ),
                                ),
                                Positioned(
                                  bottom: -1.h,
                                  left: 11.5.h,
                                  child: IconButton(
                                    onPressed: () => pickImage(),
                                    icon: const Icon(
                                      Icons.add_a_photo_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  'Currency: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Container(
                                height: 10.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.5.h,
                                    color: Color(
                                        0xFFEEEEEE), // red as border color
                                  ),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: CurrencyListPicker(
                                  useUiOverlay: true,
                                  initialSelection: 'BDT',
                                  theme: CurrencyListPickerTheme(
                                    isShowSymbol: true,
                                    isShowTitle: false,
                                    isShowCode: true,
                                    isDownIcon: true,
                                    showEnglishName: true,
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Using Default Template',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Color(0xFF898989),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Form*",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC1C1C1),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.sp,
                                      fontFamily: 'Montserrat',
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Bill to*",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC1C1C1),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.sp,
                                      fontFamily: 'Montserrat',
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Invoice",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC1C1C1),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.sp,
                                      fontFamily: 'Montserrat',
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: DateTimeFormField(
                                  decoration: InputDecoration(
                                    // hintText: '',
                                    // hintStyle: TextStyle(
                                    //   color: Color(0xFFC1C1C1),
                                    //   fontWeight: FontWeight.normal,
                                    //   fontSize: 15.sp,
                                    //   fontFamily: 'Montserrat',
                                    // ),
                                    suffixIcon: Icon(Icons.event_note),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                  mode: DateTimeFieldPickerMode.date,
                                  autovalidateMode: AutovalidateMode.always,
                                  // validator: (e) => (e?.day ?? 0) == 1 ? '' : null,
                                  onDateSelected: (DateTime value) {
                                    print(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Payment Terms",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Online/Bank/Cash Transaction',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC1C1C1),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.sp,
                                      fontFamily: 'Montserrat',
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Due Date",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: DateTimeFormField(
                                  decoration: InputDecoration(
                                    // hintText: '',
                                    // hintStyle: TextStyle(
                                    //   color: Color(0xFFC1C1C1),
                                    //   fontWeight: FontWeight.normal,
                                    //   fontSize: 15.sp,
                                    //   fontFamily: 'Montserrat',
                                    // ),
                                    suffixIcon: Icon(Icons.event_note),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                  mode: DateTimeFieldPickerMode.date,
                                  autovalidateMode: AutovalidateMode.always,
                                  // validator: (e) => (e?.day ?? 0) == 1 ? '' : null,
                                  onDateSelected: (DateTime value) {
                                    print(value);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Po Number",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF898989),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Color(0xFFC1C1C1),
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15.sp,
                                      fontFamily: 'Montserrat',
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    fillColor: Color(0xFFFFFFFF),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey.shade400),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFFFB317),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),



                        //Add line
                        // Container(
                        //   padding: EdgeInsets.only(top: 3),
                        //   child: MaterialButton(
                        //     minWidth: scaler.getWidth(77),
                        //     height: 6.h,
                        //     onPressed: () {},
                        //     color: Color(0xFFF0F0F0),
                        //     elevation: 5,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(5),
                        //     ),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         SizedBox(width: 2.w),
                        //         Text(
                        //           'Add line',
                        //           style: TextStyle(
                        //             fontWeight: FontWeight.normal,
                        //             fontSize: 12,
                        //             color: Color(0xFFFFB317),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
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
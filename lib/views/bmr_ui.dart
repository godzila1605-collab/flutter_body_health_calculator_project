import 'package:flutter/material.dart';

class BmrUI extends StatefulWidget {
  const BmrUI({super.key});

  @override
  State<BmrUI> createState() => _BmrUIState();
}

class _BmrUIState extends State<BmrUI> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text(
                  'คำนวนหาอัตราการเผาผลาญที่ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'assets/images/bmr.png',
                  width: MediaQuery.of(context).size.height * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เพศ',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              0, MediaQuery.of(context).size.height * 0.055),
                          backgroundColor: isMale
                              ? Color.fromARGB(255, 179, 217, 242)
                              : Colors.white,
                          elevation: isMale ? 0 : 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('ชาย',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: isMale
                                  ? FontWeight.normal
                                  : FontWeight.normal,
                              color: !isMale
                                  ? Colors.black
                                  : const Color.fromARGB(255, 0, 105, 255),
                            )),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              0, MediaQuery.of(context).size.height * 0.055),
                          backgroundColor: !isMale
                              ? Color.fromARGB(255, 179, 217, 242)
                              : Colors.white,
                          elevation: !isMale ? 0 : 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('หญิง',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: !isMale
                                  ? FontWeight.normal
                                  : FontWeight.normal,
                              color: !isMale
                                  ? const Color.fromARGB(255, 0, 105, 255)
                                  : Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                SizedBox(height: 5.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "น้ำหนัก (kg.)",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                        width: 2.0,
                      ),
                    ),
                    hintText: 'กรอกน้ำหนักของคุณ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 253, 253, 253),
                  ),
                ),
                SizedBox(height: 10.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ส่วนสูง (cm.)",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                        width: 2.0,
                      ),
                    ),
                    hintText: 'กรอกส่วนสูงของคุณ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 253, 253, 253),
                  ),
                ),
                SizedBox(height: 5.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "อายุ (ปี)",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                        width: 2.0,
                      ),
                    ),
                    hintText: 'กรอกอายุของคุณ',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 253, 253, 253),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                ElevatedButton(
                  onPressed: () {
                    //แก้ code
                    if (weightctrl.text.isEmpty ||
                        heightctrl.text.isEmpty ||
                        agectrl.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณากรอกข้อมูลให้ครบถ้วน'),
                            color: Colors.red,
                        },
                          ),
                      
                      );
                      return;
                    }
                    double weight = double.parse(weightctrl.text);
                    double height = double.parse(heightctrl.text);
                    int age = int.parse(agectrl.text);
                    double bmr = 0;
                    if (isMale == true) {
                      bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
                    } else {
                      bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
                    }
                    setState(() {
                      bmrvalue = bmr.toStringAsFixed(2);
                    });

                  child: Text(
                    'คำนวณ BMR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.055,
                    ),
                    backgroundColor: Color.fromARGB(255, 255, 65, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Text('คำนวณ BMR',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.05,
                    ),
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Text('ล้างข้อมูล',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ),
                SizedBox(height: 15.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: Color.fromARGB(255, 200, 230, 201),
                  child: Column(
                    children: [
                      Text('BMI',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('0.00',
                          style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(255, 255, 65, 0))),
                      Text('', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

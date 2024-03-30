import 'package:flutter/material.dart';

class bmiscreen extends StatefulWidget {
  const bmiscreen({super.key});

  @override
  State<bmiscreen> createState() => _bmiscreenState();
}

class _bmiscreenState extends State<bmiscreen> {
  var weightcontroller = TextEditingController();
  var feetcontroller = TextEditingController();
  var inchcontroller = TextEditingController();
  var result = "";
  var bgcolor = Colors.amber.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI APP",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          color: bgcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI APP"),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextField(
                  controller: weightcontroller,
                  decoration: InputDecoration(
                      label: Text("Enter Your Weight (In Kgs)"),
                      prefixIcon: Icon(Icons.line_weight)),
                  keyboardType: TextInputType.number,
                ),
              ),
              TextField(
                controller: feetcontroller,
                decoration: InputDecoration(
                    label: Text("Enter Your Height (In Feet)"),
                    prefixIcon: Icon(Icons.height)),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: inchcontroller,
                decoration: InputDecoration(
                  label: Text("Enter Your Height (In Inch)"),
                  prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  var weight = weightcontroller.text.toString();
                  var feet = feetcontroller.text.toString();
                  var inch = inchcontroller.text.toString();
                  if (weight != "" && feet != "" && inch != "") {
                    var intweight = int.parse(weight);
                    var intfeet = int.parse(feet);
                    var intinch = int.parse(inch);

                    var totalinch = (intfeet * 2) + intinch;

                    var totalcm = totalinch * 2.54;

                    var totalmetar = totalcm / 100;

                    var bmi = intweight / (totalmetar * totalmetar);

                    var msg = "";

                    if (bmi > 25) {
                      msg = "You're OverWeight!!";
                      bgcolor = Colors.blue;
                    } else if (bmi < 18) {
                      msg = "You're UnderWeight!!";
                      bgcolor = Colors.red;
                    } else {
                      msg = "You're Healthy";
                      bgcolor = Colors.green;
                    }

                    setState(() {
                      result =
                          "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                    });
                  } else {
                    setState(() {
                      result = "Please fill all the required blanks!!";
                    });
                  }
                },
                child: Text("Calculate"),
              ),
              Text(result),
            ],
          ),
        ),
      ),
    );
  }
}

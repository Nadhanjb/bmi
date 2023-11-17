import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0.0;
  void bmiCalculate(){
    double Height=double.parse(height.text)/100;
    print(Height);
    double Weight=double.parse(weight.text);
    print(Weight);
    double Heightsquare= Height*Height;
    result = Weight/Heightsquare;
    setState(() {
      result=result;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('BMI calculation'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(
            controller: height,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.trending_up),
                labelText: ('Height in cm'),
                labelStyle: TextStyle(color: Colors.pink),
              ) ),
          TextField(
            controller: weight,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.line_weight),
              labelText: ('Weight in kg'),
            labelStyle: TextStyle(color: Colors.pink),

          ),),

          SizedBox(height:40 ,),
          ElevatedButton(onPressed: (){bmiCalculate();},
              style: ElevatedButton.styleFrom(primary: Colors.pink),

    child: Text('Calculate')),
          SizedBox(height:40 ,),
          Text(result.toStringAsFixed(2))

        ],
      ),

    );
  }
}

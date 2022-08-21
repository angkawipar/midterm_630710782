import 'package:flutter/material.dart';
import 'package:midterm_630710782/temperature.dart';

class Temppage extends StatefulWidget{
  @override
  State<Temppage> createState() => _TemppageState();
}

class _TemppageState extends State<Temppage> {
  final _controller = TextEditingController();
  final convert = temp();
  var _feedback ='';

  void celtofa(){
    print('ctof');
    print(_controller.text);
    var number = double.tryParse(_controller.text);
    if(number == null){
      print('Error');
      setState(() {
        _feedback='Input Error!!!';
      });
    }else{
      var result = convert.CtoF(number);
      setState(() {
        _feedback='$number Celsius = $result Fahrenheit ';
      });
    }
  }

  void celtok(){
    print('ctok');
    print(_controller.text);
    var number = double.tryParse(_controller.text);
    if(number == null){
      print('Error');
      setState(() {
        _feedback='Input Error!!!';
      });
    }else{
      var result = convert.CtoK(number);
      setState(() {
        _feedback='$number Celsius = $result Kelvin ';
      });
    }
  }

  void fatocel(){
    print('ctok');
    print(_controller.text);
    var number = double.tryParse(_controller.text);
    if(number == null){
      print('Error');
      setState(() {
        _feedback='Input Error!!!';
      });
    }else{
      var result = convert.FtoC(number);
      setState(() {
        _feedback='$number Fahrenheit = $result Celsius';
      });
    }
  }

  void fatok(){
    print('ctok');
    print(_controller.text);
    var number = double.tryParse(_controller.text);
    if(number == null){
      print('Error');
      setState(() {
        _feedback='Input Error!!!';
      });
    }else{
      var result = convert.FtoK(number);
      setState(() {
        _feedback='$number Fahrenheit = $result Kelvin';
      });
    }
  }

  void ktocel(){
    print('ctok');
    print(_controller.text);
    var number = double.tryParse(_controller.text);
    if(number == null){
      print('Error');
      setState(() {
        _feedback='Input Error!!!';
      });
    }else{
      var result = convert.KtoC(number);
      setState(() {
        _feedback='$number Kelvin = $result Celsius';
      });
    }
  }

  void ktofa(){
    print('ctok');
    print(_controller.text);
    var number = double.tryParse(_controller.text);
    if(number == null){
      print('Error');
      setState(() {
        _feedback='Input Error!!!';
      });
    }else{
      var result = convert.KtoF(number);
      setState(() {
        _feedback='$number Kelvin = $result Fahrenheit';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Midterm Exam'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Text('Temperature Converter',
            style: TextStyle(fontSize: 30.0),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.white, //สีพื้นหลังของ Container
                border: Border.all(
                  width: 5.0,
                  color: Colors.amber,
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: ('Enter a temperature to convert'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5.0),
                        ElevatedButton(
                            onPressed: celtofa,
                            child: Text('Celsius to Fahrenheit')
                        ),
                        SizedBox(width: 5.0),
                        ElevatedButton(onPressed: celtok,
                            child: Text('Celsius to Kelvin')
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        ElevatedButton(onPressed: fatocel,
                            child: Text('Fahrenheit to Celsius')
                        ),
                        SizedBox(width: 5.0),
                        ElevatedButton(onPressed: fatok,
                            child: Text('Fahrenheit to Kelvin')
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: ktocel,
                            child: Text('Kelvin to Celsius')
                        ),
                        SizedBox(width: 5.0),
                        ElevatedButton(onPressed: ktofa,
                            child: Text('Kelvin to Fahrenheit')
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
          Text(
              style: TextStyle(fontSize: 20.0),
              _feedback),
        ],
      ),
    );
  }
}
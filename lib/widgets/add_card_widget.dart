import 'package:flutter/material.dart';

class AddCardWidget extends StatefulWidget {
  const AddCardWidget() : super();

  @override
  _AddCardWidgetState createState() => _AddCardWidgetState();
}

class _AddCardWidgetState extends State<AddCardWidget> {
  TextEditingController _controller;
  double _currentSliderValue = 100;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 40,
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 20.0,
            bottom: 30.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: ExpansionTile(
            title: Text(
              'Ajustar Limite',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
              textAlign: TextAlign.center,
            ),
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(height: 20.0),
                  Text(
                    'R\$ ' ' $_currentSliderValue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 100,
                    max: 9999,
                    divisions: 1000,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

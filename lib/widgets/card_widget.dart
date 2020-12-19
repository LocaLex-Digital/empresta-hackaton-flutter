import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    @required this.propostaTitle,
  }) : super();

  final String propostaTitle;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 30.0,
            bottom: 40.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: ExpansionTile(
            title: Text(
              propostaTitle,
              style: TextStyle(
                color: Colors.black,
                    fontSize: 18,
                
              ),
              textAlign: TextAlign.center,
            ),
            children: <Widget>[
              Column(
                children: [
                  Text('aaaaaaaaaaaaaaaaaa'),
                  Text('bhbhbhhbhbbhbhbhb'),
                  Text('3247234872347823784'),
                ],
              ),
            ],
          ),
        ),
      );
}

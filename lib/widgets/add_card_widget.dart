import 'package:flutter/material.dart';

class AddCardWidget extends StatelessWidget {
  const AddCardWidget() : super();


  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 40,
        ),
          child: Container(
            padding: EdgeInsets.only(
              top: 30.0,
              bottom: 30.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 25,
                ),
                Text(
                  ' Nova Proposta',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
      );
}

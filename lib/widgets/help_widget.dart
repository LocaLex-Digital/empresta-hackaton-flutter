import 'package:flutter/material.dart';

class HelpWidget extends StatefulWidget {
  HelpWidget() : super();

  @override
  HelpWidgetState createState() => HelpWidgetState();
}

class HelpWidgetState extends State<HelpWidget> {
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          _showMyDialog();
        },
        child: CircleAvatar(
          backgroundColor: Color(0xFF012E6E),
          child: Icon(
            Icons.help_outline,
            color: Colors.white,
          ),
        ),
      );

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Oi, precisa de ajuda?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child:
                      Text('Você pode escolher o tipo de ajuda que preferir:'),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  FlatButton(
                    color: Color(0xFFEF6C01),
                    onPressed: () {},
                    child: Text(
                      'TELEFONAR',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  FlatButton(
                    color: Color(0xFFEF6C01),
                    onPressed: () {},
                    child: Text(
                      'WHATS APP',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Fechar',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

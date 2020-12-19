import 'package:empresta_app/options_description_page.dart';
import 'package:empresta_app/profile_page.dart';
import 'package:empresta_app/widgets/add_card_widget.dart';
import 'package:empresta_app/widgets/card_widget.dart';
import 'package:empresta_app/widgets/help_widget.dart';
import 'package:empresta_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Empresta App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFFEF6C01),
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: AddCardWidget(),
              ),
              CardWidget(
                propostaTitle: 'Proposta - 2',
              ),
              CardWidget(
                propostaTitle: 'Proposta - Jotinha Consignado',
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OptionsDrescription(
                    index: index,
                  ),
                ),
              );
            } else if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OptionsDrescription(
                    index: index,
                  ),
                ),
              );
            }
          },
          selectedItemColor: Color(0xFF012E6E),
          selectedFontSize: 19,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: "Propostas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: "Contratos",
            ),
          ],
        ),
      );

  Widget _appBar() => AppBar(
        leading: InkWell(
          onTap: () {
                          Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(
                  ),
                ),
              );
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ProfileWidget(),
          ),
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            RichText(
              text: TextSpan(
                text: 'Olá ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Yghor Ribas', // add user name here
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Color(0xFF012E6E),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 26.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: HelpWidget(),
          ),
        ],
      );
}

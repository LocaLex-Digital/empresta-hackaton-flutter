import 'package:empresta_app/main.dart';
import 'package:empresta_app/widgets/help_widget.dart';
import 'package:flutter/material.dart';

class OptionsDrescription extends StatefulWidget {
  OptionsDrescription({
    @required this.index,
  }) : super();

  final int index;

  @override
  _OptionsDescriptionState createState() => _OptionsDescriptionState();
}

class _OptionsDescriptionState extends State<OptionsDrescription> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
              cards(),
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
                MaterialPageRoute(builder: (context) => MyHomePage()),
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
          currentIndex: widget.index == 0 ? 0 : 2,
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
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
          ),
        ),
        backgroundColor: Color(0xFFEF6C01),
        title: Text(
          widget.index == 0 ? 'PROPOSTAS' : 'CONTRATOS',
          style: TextStyle(
            color: Color(0xFF012E6E),
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: HelpWidget(),
          ),
        ],
      );

  Widget cards() => Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: GestureDetector(
          onTap: () {},
          child: Card(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                        widget.index == 0
                            ? 'Proposta LocaLex Propostal'
                            : 'Contrato ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    size: 40,
                    color: Color(0xFF012E6E),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}

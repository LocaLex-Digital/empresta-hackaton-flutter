import 'package:empresta_app/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage() : super();

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50.7),
                  ProfileWidget(),
                  const SizedBox(height: 36.2),
                  Text(
                    'YGHOR RIBAS',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 9.4),
                  Text(
                    'Email: yghor.ribas@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 9.4),
                      Text(
                    'Seu numero telefone: (31) 321983123',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15.4),
                  FlatButton(
                    color: Color(0xFFEF6C01),
                    onPressed: () {},
                    child: Text(
                      'Mudar senha de login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  FlatButton(
                    color: Color(0xFFEF6C01),
                    onPressed: () {},
                    child: Text(
                      'Avaliar o App',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _appBar() => AppBar(
        backgroundColor: Color(0xFFEF6C01),
        title: Text(
          'SEU PERFIL',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      );
}

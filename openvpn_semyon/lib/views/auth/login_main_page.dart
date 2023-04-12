import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openvpn_semyon/views/auth/login_page.dart';
import 'package:openvpn_semyon/views/drawers/nav_drawer.dart';


class LoginMainPage extends StatefulWidget {
  LoginMainPage();

  @override
  State<LoginMainPage> createState() => _LoginMainPageState();
}

class _LoginMainPageState extends State<LoginMainPage> {
  bool checkedValue = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(
        key: Key("1"),
      ),
      body: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,0,10,20),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      shadowColor: Colors.black,
                      elevation: 5,
                      child: IconButton(
                        icon: Icon(Icons.menu_rounded),
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        }
                      ),
                    ),
                  )
                ),
              ),
              Text(
                'Ocean VPN', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff2BBEF4),
                  fontSize: 32
                ),
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(20,20,20,0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FontAwesomeIcons.facebook, 
                          size: 30.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Continue with facebook',
                          style: TextStyle(
                            color: const Color(0xff13566B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,20,20,0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FontAwesomeIcons.google, 
                          size: 30.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: const Color(0xff13566B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20,20,20,20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          FontAwesomeIcons.apple, 
                          size: 30.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Continue with Apple',
                          style: TextStyle(
                            color: const Color(0xff13566B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                  ),
                  Text("OR"),
                  Expanded(
                      child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                  ),
                ]
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20,20,20,0),
                child: SizedBox(
                  width: double.infinity,
                  child: PhysicalModel(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff2CBBF3),
                    child: TextButton(
                      onPressed: () async {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                      child: Text(
                        'Sign in with password',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  ' Sign up',
                  style: TextStyle(
                    color: const Color(0xff2BBEF4),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
  _displaySnackBar(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}

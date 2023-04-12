import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openvpn_semyon/views/drawers/nav_drawer.dart';
import 'package:openvpn_semyon/views/init/power_on_page.dart';
import 'package:openvpn_semyon/views/loading_page.dart';


class SignUpPage extends StatefulWidget {
  SignUpPage();

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkedValue = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
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
                  padding: EdgeInsets.fromLTRB(10,0,10,20),
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
              Text(
                'Create Your Account', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff13566B),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,20,20,20),
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.black,
                elevation: 5,
                color: Colors.white,
                child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email Address',
                      contentPadding: EdgeInsets.only(top: 0, left: 25, bottom: 20),
                      prefixIcon: Icon(Icons.mail),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),),
              Padding(
                padding: EdgeInsets.fromLTRB(20,0,12,20),
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.black,
                elevation: 5,
                color: Colors.white,
                child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Your password',
                      contentPadding: EdgeInsets.only(top: 0, left: 25, bottom: 20),
                      prefixIcon: Icon(Icons.lock),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),),
              CheckboxListTile(
                title: Text("Remember me"),
                value: checkedValue,
                onChanged: (newValue) { 
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.lightBlueAccent,
                side: BorderSide(color: Colors.lightBlueAccent, width: 2),
                
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20,0,10,20),
                    child: PhysicalModel(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue.shade400,
                      child: TextButton(
                        onPressed: () async {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (_) => LoadingPage()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ]),

              Row(
                  children: <Widget>[
                      Expanded(
                          child: new Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            color: Colors.black,
                            height: 36,
                          )),
                      ),
                      Text("OR"),
                      Expanded(
                          child: new Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: Divider(
                            color: Colors.black,
                            height: 36,
                          )),
                      ),
                  ]
              ),

              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: new Row(
                  children: <Widget>[
                    new Expanded ( 
                      flex:1,
                      child : Icon(FontAwesomeIcons.facebook, size: 30.0,)
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded ( 
                      flex:1,
                      child : Icon(FontAwesomeIcons.google, size: 30.0,)
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    new Expanded ( 
                      flex:1,
                      child : Icon(FontAwesomeIcons.apple, size: 30.0)
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?', 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        Navigator.push(
                          // context, MaterialPageRoute(builder: (_) => LoadingPage()));
                          context, MaterialPageRoute(builder: (_) => PowerOnPage()));
                      },
                      child: Text(
                        ' Sign in',
                        style: TextStyle(
                        color: const Color(0xff2BBEF4),
                        fontSize: 16
                      ),
                      ),
                    )
                  ],
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

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openvpn_semyon/views/drawers/nav_drawer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class PowerOffPage extends StatefulWidget {
  PowerOffPage();

  @override
  State<PowerOffPage> createState() => _PowerOffPageState();
}

class _PowerOffPageState extends State<PowerOffPage> {
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
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/wallpapers/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        // padding: EdgeInsets.fromLTRB(10,0,10,20),
                        // decoration: BoxDecoration(
                        //     color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20,70,10,20),
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
                        ),
                      ),
                      LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Container(
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: Image.asset('assets/wallpapers/power.png'),
                                      iconSize: 200,
                                      onPressed: () {},
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Text(
                                        'Connecting Time',
                                        style: TextStyle(
                                          color: Color(0xff13566B),
                                          fontSize: 12
                                        ),
                                      )
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.all(0.0),
                                      child: Text(
                                        '00:30:26',
                                        style: TextStyle(
                                          color: Color(0xff13566B),
                                          fontSize: 32
                                        ),
                                      )
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: IntrinsicHeight(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              'Download\n245 KB/s',
                                              style: TextStyle(
                                                color: Color(0xff13566B),
                                                fontSize: 14
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: VerticalDivider(
                                              color: Colors.black,
                                              thickness: 2,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              'Upload\n176 KB/s', 
                                              style: TextStyle(
                                                color: Color(0xff13566B),
                                                fontSize: 14
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: PhysicalModel(
                                      borderRadius: BorderRadius.circular(20),
                                      shadowColor: Colors.black,
                                      elevation: 5,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(FontAwesomeIcons.flagUsa, size: 30.0,),
                                            Column(
                                              children: [
                                                Text(
                                                  'United States', 
                                                  style: TextStyle(
                                                    color: Color(0xff13566B),
                                                    fontSize: 14
                                                  ),
                                                ),
                                                Text(
                                                  'IP 37.120.202.186', 
                                                  style: TextStyle(
                                                    color: Color(0xff13566B),
                                                    fontSize: 10
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              '63ms', 
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff13566B),
                                                fontSize: 16
                                              ),
                                            ),
                                            Icon(
                                              Icons.chevron_right
                                            ),
                                          ],
                                        )
                                      )
                                    ),
                                  ),
                              ],)
                            ),
                          );
                        }
                      ),
                    ]
                  )
                )
              );
            }
        )
      )
    );
  }
  _displaySnackBar(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}

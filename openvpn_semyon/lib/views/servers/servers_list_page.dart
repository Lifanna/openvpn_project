import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openvpn_semyon/views/drawers/nav_drawer.dart';
import 'package:openvpn_semyon/views/init/power_on_page.dart';


class ServersListPage extends StatefulWidget {
  ServersListPage();

  @override
  State<ServersListPage> createState() => _ServersListPageState();
}

class _ServersListPageState extends State<ServersListPage> {
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
      body: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    color: const Color(0xff13566B),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.close, color: Colors.white,),
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(builder: (_) => PowerOnPage()));
                            },
                          ),
                          Expanded( 
                            child: Align(                       // <---  these 2 lines fixed it 
                              alignment: Alignment.center,
                              child:Text(
                                "VPN Server",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20,20,20,0),
                        child: SizedBox(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.1,
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
                                        'Ukraine', 
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
                                  IconButton(
                                    icon: Icon(Icons.chevron_right), 
                                    onPressed: () { 
                                      Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => ServersListPage()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
          );
        }
      ),
    );
  }
  _displaySnackBar(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}

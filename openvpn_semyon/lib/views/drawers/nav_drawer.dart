import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  const CustomDrawer({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraints) {
        return Drawer(
          width: constraints.maxWidth * 0.85,//20.0, 
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                  Container(
                    height: constraints.maxHeight * 0.3,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: PhysicalModel(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 5,
                        child: Wrap(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.chevron_left,
                                size: 30.0,
                                color: const Color(0xff2BBEF4)
                              ),
                            ),
                            Column (
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Ocean VPN",
                                  style: TextStyle(
                                    color: const Color(0xff2BBEF4),
                                    fontSize: 32
                                  )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Account: ",
                                      style: TextStyle(
                                        color: const Color(0xff13566B),
                                        fontSize: 15
                                      )
                                    ),
                                    Text(
                                      "FREE",
                                      style: TextStyle(
                                        color: const Color(0xff2BBEF4),
                                        fontSize: 15,
                                      ),
                                    )
                                  ]
                                )
                              ],
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: const Color(0xffFFE182),
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'UPGRADE TO PREMIUM',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'My Account',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'Share',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'Contact Us',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'Privacy Policy',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'Terms of Service',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'About Premium',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: PhysicalModel(
                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: TextButton(
                                    onPressed: () async {
                                      
                                    },
                                    child: Text(
                                      'FAQ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color(0xff13566B)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ]
            ),
          ),
        );
      }
    );
  }
}
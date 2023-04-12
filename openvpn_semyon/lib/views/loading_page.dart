import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openvpn_semyon/views/auth/login_main_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class LoadingPage extends StatefulWidget {
  LoadingPage();

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  double _percent = 1.0;

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
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => LoginMainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Ocean VPN",
                          style: TextStyle(
                            color: const Color(0xff2BBEF4),
                            fontSize: 48
                        ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 50,
                            animation: true,
                            lineHeight: 15.0,
                            animationDuration: 2000,
                            percent: _percent,
                            barRadius: Radius.circular(10),
                            progressColor: const Color(0xff2BBEF4),
                          ),
                        ),
                      )
                  ],)
                ),
              );
            }
        ),
      )
    );
  }
}

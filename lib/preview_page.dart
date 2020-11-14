import 'dart:ui';

import 'package:flutter/material.dart';

class PreViewPage extends MaterialPageRoute {
  final datas;
  final datas2;
  PreViewPage({this.datas, this.datas2})
      : super(
          builder: (context) {
            return Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.add_link),
                      onPressed: () {},
                    )
                  ],
                  backgroundColor: Colors.greenAccent[400],
                  title: Text('PreView'),
                ),
                body: Container(
                  child: Column(children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.blueGrey,
                                                blurRadius: 10,
                                                spreadRadius: 1,
                                                offset: Offset(5, 5))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Icon(Icons.wb_sunny),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.blueGrey,
                                                  blurRadius: 10,
                                                  spreadRadius: 1,
                                                  offset: Offset(5, 5))
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(Icons.wb_cloudy),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.blueGrey,
                                                  blurRadius: 10,
                                                  spreadRadius: 1,
                                                  offset: Offset(5, 5))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(Icons.filter_vintage),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.blueGrey,
                                                  blurRadius: 10,
                                                  spreadRadius: 1,
                                                  offset: Offset(5, 5))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(Icons.ac_unit),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25)),
                                      image: DecorationImage(
                                          image: NetworkImage('$datas'),
                                          fit: BoxFit.cover)),
                                  // child: BackdropFilter(
                                  //   filter: ImageFilter.blur(
                                  //       sigmaX: 1.0, sigmaY: 1.0),
                                  //   child: Container(
                                  //     decoration: new BoxDecoration(
                                  //         color: Colors.white.withOpacity(0.0)),
                                  //   ),
                                  // ),
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text(
                                  '$datas2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(children: [
                              Text(
                                '--????--',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 18),
                              )
                            ]),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20))),
                                    padding: EdgeInsets.fromLTRB(40, 20, 0, 20),
                                    child: Text('Buy Now'),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(40, 20, 0, 20),
                                    color: Colors.white,
                                    child: Text('Description'),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  ]),
                ));
          },
        );
}

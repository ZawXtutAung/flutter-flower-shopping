import 'package:flutter/material.dart';
import 'package:flutter_flower_shopping/preview_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.greenAccent[400],
        //   title: Text('Material App Bar'),
        // ),
        body: MainActivity(),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fmdl2-1.fna.fbcdn.net/v/t1.0-9/92629871_2631049577173631_1157103484198191104_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeHBDZzd2kXhE-FpNlSrlopQgL4mKT_233SAviYpP_bfdPi9J6lgP_77kLMIlzdbvageKOHFDdlrxb7f1rutteIH&_nc_ohc=cQc8LCKe_YwAX90fCR7&_nc_ht=scontent.fmdl2-1.fna&oh=3af1e73c336cff56051c8ad647d85441&oe=5FD48833'),
                ),
                accountEmail: Text('ZawXtut@gmail.com'),
                accountName: Text('Zaw Xtut'),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'account',
            ),
          ],
        ),
      ),
    );
  }
}

class MainActivity extends StatefulWidget {
  const MainActivity({
    Key key,
  }) : super(key: key);

  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.greenAccent[400],
                      title: Text('Flower Shop App'),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Flower',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2
                                    ..color = Colors.white),
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://scontent.fmdl2-1.fna.fbcdn.net/v/t1.0-9/92629871_2631049577173631_1157103484198191104_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeHBDZzd2kXhE-FpNlSrlopQgL4mKT_233SAviYpP_bfdPi9J6lgP_77kLMIlzdbvageKOHFDdlrxb7f1rutteIH&_nc_ohc=cQc8LCKe_YwAX90fCR7&_nc_ht=scontent.fmdl2-1.fna&oh=3af1e73c336cff56051c8ad647d85441&oe=5FD48833'),
                              //child:Image(image: null,),
                              // backgroundColor: Colors.white,
                            )
                          ]),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.greenAccent[400],
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(bottom: 23),
              ),
            ),
            Positioned(
                right: 10,
                left: 10,
                //top: 0,
                bottom: 0,
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      filled: true,
                      fillColor: Colors.white,
                      helperStyle: TextStyle(color: Colors.green),
                      hintText: 'Search...'),
                ))
          ]),
        ),
        //  Drawer(),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommend',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = Colors.green),
                      ),
                      Container(
                        //color: Colors.blueGrey,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[700],
                            // border: Border.all(
                            //   color: Colors.grey,
                            //   width: 2,
                            // ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'More..',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 205,
                    child: ListView(
                      padding: EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          //margin: EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PreViewPage(
                                      datas:
                                          'https://i.pinimg.com/564x/b2/0c/e4/b20ce463501c850ebcb4b9cddbefb1ec.jpg',
                                      datas2: 'US 5.99'));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  child: Image(
                                      image: NetworkImage(
                                          'https://i.pinimg.com/564x/b2/0c/e4/b20ce463501c850ebcb4b9cddbefb1ec.jpg')),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Land Miracle '),
                                      Text(
                                        'US 5.99',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                          decorationStyle:
                                              TextDecorationStyle.wavy,
                                          decorationColor: Colors.red,
                                          decorationThickness: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                        Card(
                          margin: EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PreViewPage(
                                      datas:
                                          'https://media1.popsugar-assets.com/files/thumbor/OVUWFmjYPPwc8yqqvgFwnlR4GHQ/0x77:1456x1533/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2020/06/03/838/n/1922794/2c0210f35ed7f4e940fcc1.10021346_/i/Best-Indoor-Flower-Plants-Beginners.jpg',
                                      datas2: 'US 5.00'));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  child: Image(
                                    image: NetworkImage(
                                        'https://media1.popsugar-assets.com/files/thumbor/OVUWFmjYPPwc8yqqvgFwnlR4GHQ/0x77:1456x1533/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2020/06/03/838/n/1922794/2c0210f35ed7f4e940fcc1.10021346_/i/Best-Indoor-Flower-Plants-Beginners.jpg'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Anthurium '),
                                      Text(
                                        'US 5.00',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                          decorationStyle:
                                              TextDecorationStyle.wavy,
                                          decorationColor: Colors.red,
                                          decorationThickness: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                        Card(
                          margin: EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PreViewPage(
                                      datas:
                                          'https://i.pinimg.com/564x/9f/55/f3/9f55f3d7dacddea8d1c5c5154e6ff7fe.jpg',
                                      datas2: 'US 5'));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  child: Image(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/564x/9f/55/f3/9f55f3d7dacddea8d1c5c5154e6ff7fe.jpg'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Land Miracle '),
                                      Text(
                                        'US 5',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                          decorationStyle:
                                              TextDecorationStyle.wavy,
                                          decorationColor: Colors.red,
                                          decorationThickness: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                        Card(
                          margin: EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PreViewPage(
                                      datas:
                                          'https://i.pinimg.com/564x/60/67/3c/60673c94cd69d3dc7322bbbff4e2a0d8.jpg',
                                      datas2: 'US 5.99'));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  color: Colors.amber,
                                  child: Image(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/564x/60/67/3c/60673c94cd69d3dc7322bbbff4e2a0d8.jpg'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Land Miracle '),
                                      Text(
                                        'US 5.99',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                          decorationStyle:
                                              TextDecorationStyle.wavy,
                                          decorationColor: Colors.red,
                                          decorationThickness: 0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Featured Plants',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = Colors.green)),
                      Container(
                        //color: Colors.blueGrey,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[700],
                            // border: Border.all(
                            //   color: Colors.grey,
                            //   width: 2,
                            // ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'More..',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 220,

                    // color: Colors.blue,
                    child: ListView(
                      padding: EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          margin: EdgeInsets.all(2),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                //width: 150,
                                child: Image(
                                  image: NetworkImage(
                                      'https://upload.wikimedia.org/wikipedia/commons/2/2f/Myosotis_sylvatica%2C_Bosvergeet-mij-nietje.jpg'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(top: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('MyosotisSylvatica '),
                                    Text(
                                      'USD 10',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                        decorationStyle:
                                            TextDecorationStyle.wavy,
                                        decorationColor: Colors.red,
                                        decorationThickness: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          color: Colors.white,
                        ),
                        Card(
                          margin: EdgeInsets.all(2),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                //width: 150,
                                child: Image(
                                  image: NetworkImage(
                                      'https://worldoffloweringplants.com/wp-content/uploads/2016/05/Forget-Me-Not-Plants2-702x527.jpg'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(top: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Miro '),
                                    Text(
                                      'USD 12',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                        decorationStyle:
                                            TextDecorationStyle.wavy,
                                        decorationColor: Colors.red,
                                        decorationThickness: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          color: Colors.white,
                        ),
                        Card(
                          margin: EdgeInsets.all(2),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                //width: 150,
                                child: Image(
                                  image: NetworkImage(
                                      'https://cdn.shopify.com/s/files/1/0200/5036/products/1893957_130425174900_01097_9756a671-e43f-47ef-9d2a-8872d1124f73_740x.jpeg?v=1421153089'),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(top: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Miro '),
                                    Text(
                                      'USD 12',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                        decorationStyle:
                                            TextDecorationStyle.wavy,
                                        decorationColor: Colors.red,
                                        decorationThickness: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

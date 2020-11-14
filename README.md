# flutter_flower_shopping

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# flutter-flower-shopping

 ``` dart
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
                )) ```

**Flutter Search Card **

                    ```dart
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
                        )
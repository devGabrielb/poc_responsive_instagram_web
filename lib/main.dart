import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_app_web/components/responsive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1050),
        child: Material(
          elevation: 1,
          child: Container(
            color: Colors.white,
            child: LayoutBuilder(builder: (_, BoxConstraints constrainst) {
              print(constrainst.maxWidth);
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 935),
                    child: Container(
                      width: constrainst.maxWidth,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage('assets/instagram.png'),
                              height: 29,
                              width: 103,
                            ),
                          ),
                          ResponsiveWidget.isSmallScreen(context)
                              ? Container()
                              : Container(
                                  child: Container(
                                    width: 215,
                                    height: 30,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black26)),
                                    child: TextField(
                                      textAlignVertical:
                                          TextAlignVertical(y: 1),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Pesquisar",
                                          hintStyle: TextStyle(fontSize: 12),
                                          prefixIcon: Icon(Icons.search)),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ),
                                ),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 198),
                            child: Container(
                              width: constrainst.maxWidth,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.black,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 24),
        height: screenSize.height,
        width: screenSize.width,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 614),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        color: Colors.amber,
                        width: constraints.maxWidth,
                        height: 120,
                      ),
                      Container(
                        width: constraints.maxWidth,
                        height: 400,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  width: screenSize.width > 1031 ? screenSize.width * 0.02 : 0),
              screenSize.width > 1031
                  ? Container(
                      color: Colors.pink,
                      width: 293,
                      height: 420,
                    )
                  : Container()
            ],
          );
        }),
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Pesquisar",
        hintStyle: TextStyle(fontSize: 16),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(
              color: Colors.black26,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(
              color: Colors.black26,
            )),
      ),
      style: TextStyle(color: Colors.black, fontSize: 16),
    );
  }
}

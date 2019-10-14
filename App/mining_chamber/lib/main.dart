import 'package:flutter/material.dart';

// import 'models/global.dart';

void main() => runApp(MyApp());

TextStyle blogTitleStyle = new TextStyle(
  fontFamily: 'Avenir',
  fontSize: 20,
  color: Colors.white,
);

TextStyle blogDateStyle = new TextStyle(
  fontFamily: 'Avenir',
  fontSize: 12,
  color: Colors.white.withOpacity(0.5),
);

TextStyle smallButtonTextStyle = new TextStyle(
    fontFamily: 'Avenir',
    fontWeight: FontWeight.bold,
    fontSize: 12,
    color: Colors.blue);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: Colors.amber,
        buttonColor: Colors.blueAccent,
        fontFamily: 'Avenir',
        cardColor: Colors.blueGrey[500],
        cardTheme: CardTheme.of(context).copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
        ),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.black26,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 16,
                color: Colors.white,
              ),
              subtitle: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 14,
              ),
              body1: TextStyle(
                fontFamily: 'RobotoCondensed',
                color: Colors.black,
                fontSize: 12,
              ),
              body2: TextStyle(
                fontFamily: 'RobotoCondensed',
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              display1: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 34,
                letterSpacing: 2,
                color: Colors.amber,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 2.0),
                    blurRadius: 5.0,
                    color: Colors.black,
                  ),
                ],
              ),
              display2: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool library = true;
  bool services = false;
  bool lottery = false;
  Widget tab;
  @override
  Widget build(BuildContext context) {
    getTab();
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text('MINING\nCHAMBER',
                  style: Theme.of(context).textTheme.display1),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                bottom: 20,
                right: 10,
                top: 20,
              ),
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.blueGrey],
                  stops: [0.2, 0.6],
                  begin: const FractionalOffset(0, 1),
                  end: const FractionalOffset(0, 0),
                  // center: Alignment(0.0, 1),
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: tab,
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            child: FloatingActionButton(
                              child: Icon(Icons.library_books),
                              onPressed: () {
                                setState(() {
                                  library = true;
                                  services = false;
                                  lottery = false;
                                  getTab();
                                });
                              },
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            child: FloatingActionButton(
                              child: Icon(Icons.monetization_on),
                              onPressed: () {
                                setState(() {
                                  library = false;
                                  services = false;
                                  lottery = true;
                                  getTab();
                                });
                              },
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            child: FloatingActionButton(
                              child: Icon(Icons.settings),
                              onPressed: () {
                                setState(() {
                                  library = false;
                                  services = true;
                                  lottery = false;
                                  getTab();
                                });
                              },
                              backgroundColor: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.08,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getTab() {
    if (library) {
      tab = cryptoLibrary();
    }
    if (lottery) {
      tab = cryptoLottery();
    }
    if (services) {
      tab = cryptoServices();
    }
  }

  Widget cryptoLottery() {
    return Container(
        // height: 100,
        );
  }

  Widget cryptoServices() {
    return Container(
        // height: 100,
        );
  }

  Widget cryptoLibrary() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            color: Colors.blueGrey[500],
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Crypto Library',
                style: Theme.of(context).textTheme.display2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 00, bottom: 10),
            // padding: EdgeInsets.only(top: 0, bottom: 10),
            child: ListView(
              children: getLatestArticles(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> getLatestArticles() {
    List<Widget> articleCards = [];
    for (int i = 0; i < 10; i++) {
      articleCards.add(articleCard());
    }
    return articleCards;
  }

  Widget articleCard() {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Basics of Wattage and\nElectricity',
              style: Theme.of(context).textTheme.title,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('September 7, 2019', style: blogDateStyle),
                RaisedButton(
                  child: Text('Read More', style: smallButtonTextStyle),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wip/Words.dart';
import 'package:wip/com/success/widgets/app_login.dart';
import 'package:wip/com/success/widgets/basic.dart';
import 'package:wip/com/success/widgets/form_test.dart';
import 'package:wip/com/success/widgets/home.dart';
import 'package:wip/com/success/widgets/http_test.dart';
import 'package:wip/com/success/widgets/my_images.dart';
import 'package:wip/com/success/widgets/my_list.dart';
import 'package:wip/com/success/widgets/navigate_one.dart';
import 'package:wip/com/success/widgets/network_image_test.dart';
import 'package:wip/com/success/widgets/recipe_preview_one.dart';
import 'package:wip/com/success/widgets/recipes_preview.dart';
import 'package:wip/com/success/widgets/stateful_test.dart';
import 'package:wip/com/success/widgets/util.dart';

void main() {
  // runApp(MyApp());
  // runApp(new Words());
  // runApp(MainApp());
  // runApp(new Basic());
  runApp(new MaterialApp(
    title: 'Hello world!',
    initialRoute: Home.screenName,
    routes: {
      Constants.homeScreenName: (context) => Home(),
      Constants.formScreenName: (context) => MySimpleForm(),
      Constants.statefulScreenName: (context) => MyStatefulWidget(),
      Constants.imageScreenName: (context) => MyImage(),
      Constants.listScreenName: (context) => MyList(),
      Constants.flexListScreenName: (context) => FlexibleList(),
      Constants.navigationScreenName: (context) => ScreenOne(),
      Constants.carouselScreenName: (context) => MyCarouselImage(),
      Constants.httpTestScreenName: (context) => MyHttpTest(),
      Constants.recipePreviewTestScreenName: (context) => RecipePreviewOne(),
      Constants.networkImageTestScreenName: (context) => NetworkImageTest()
    },
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world!!!',
      // home: new Basic(),
      // home: new AppLogin(),
      home: new Scaffold(
        appBar: AppBar(
            title: new Text('Welcome'),
            leading: new Icon(Icons.menu),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 50.0),
                  child: Icon(Icons.login))
            ]),
        // body: AppLogin(),
        // body: MyStatefulWidget(),
        // body: MySimpleForm(),
      ),
      initialRoute: '/',
      routes: {
        '': (context) => MainApp(),
        '/simple': (context) => MySimpleForm()
      },
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

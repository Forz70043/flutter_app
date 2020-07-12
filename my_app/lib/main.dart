import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/routes/routes.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
  //runApp(MyApp());
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState()=> new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  
  String mtext=' ';
  
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: //new MyCustomAppBar(titleAppBar: 'XXX Custom',backgroundColor: 'green',centerTitle: true).getCustomAppBar(
        new AppBar(title: new Text('AppBar Widget'),
        /*
        backgroundColor: Colors.lightBlue,
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_forward),
            onPressed: (){ setState((){ mtext='Arrow icon button'; } );}
          ),
          new IconButton(
            icon: new Icon(Icons.close),
            onPressed: (){
              setState(() { mtext='this is close button'; });
            }
          ),
        ],
        centerTitle: true,
        elevation: 30.0,
        titleSpacing: 80.0,
        toolbarOpacity: 0.7,
        */
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text('alfonso@libero.it'), 
              accountName: new Text('Alfonso Pisicchio'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26,child: new Text('M')),
              decoration: new BoxDecoration(color: Colors.orange),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(backgroundColor: Colors.black26,),
                new CircleAvatar(backgroundColor: Colors.pink,)
              ],
            ),
            new ListTile(
              title: new Text('Page 1'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new Routes('Page 1'))),),
            new ListTile(
              title: new Text('Page 2'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>new Routes('Page 2'))),),
            new ListTile(title: new Text('Page 3'),trailing: new Icon(Icons.arrow_forward)),
          ]
        ),
      ),
      body: new Center(
        child: new Text(mtext),
      )
    );
  }
}

class MyCustomAppBar{
  String titleAppBar, backgroundColor, textStyleColor;
  bool automaticallyImplyLeading;
  bool centerTitle;
  Map actions;

  MyCustomAppBar({
    this.titleAppBar,
    this.backgroundColor,
    this.textStyleColor,
    this.automaticallyImplyLeading=false ,
    this.centerTitle=true,
    this.actions,
  });

  Widget getCustomAppBar(){
    
    return AppBar(
      title: new Text(titleAppBar),
      centerTitle: centerTitle,
      automaticallyImplyLeading: automaticallyImplyLeading,

    );
  }

}

/*
 * Class for create custom AppBar
 */
/*
class MyCustomAppBar extends AppBar 
{
  MyCustomAppBar(String titleAppBar,String iconThemeColor):super(
    iconTheme: IconThemeData(
      color: Colors.black,    //change color here
    ),
    backgroundColor: Colors.white,
    title: Text(titleAppBar, style: TextStyle(color: Colors.black)),
    elevation: 0.0,
    automaticallyImplyLeading: false,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () => null,
      ),
      IconButton(
        icon: Icon(Icons.person),
        onPressed: () => null,
      ),
    ],
  );
}
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));

    return MaterialApp(
      //banner debug not visible
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),

      /* FLUTTER DEFAULT 
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      */

      home: new Scaffold(
        
        appBar: AppBar(
          title: Text('Titolo AppBar'),
          centerTitle: true,
        ),


      ),
      //MyHomePage(title: 'Flutter Demo Home Page'),
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

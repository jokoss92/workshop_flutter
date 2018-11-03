import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new FirstScreen(),debugShowCheckedModeBanner: false,);
  
}
}
 class FirstScreen extends StatelessWidget{
 @override

  Widget build(BuildContext context){
    //TODO:implement build
    return Scaffold(
       //membuat widget app bar
       appBar: new AppBar(
         //menambahkan title app bar
         title: new Text('Belajar Flutter'),
         //mengubah warna background
         backgroundColor: Colors.red[900],
         //menambahkan leading menu home
         leading: new IconButton(icon: new Icon(Icons.home,color: Colors.white),
          onPressed: (){
            Fluttertoast.showToast(msg: "Menu Home", toastLength: Toast.LENGTH_SHORT,
              bgcolor: "e74c3c",
              textcolor: '#ffffff'
            );
          },
         ),

         //menambahkan action button
         actions: <Widget>[
           new IconButton(icon: new Icon(Icons.call, color: Colors.white),
            onPressed: (){
            Fluttertoast.showToast(msg: "Panggilan Telepon", toastLength: Toast.LENGTH_SHORT,
             bgcolor: "e74c3c",
              textcolor: '#ffffff');

              //navigate to second screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
          },
           ),
           new IconButton(icon: new Icon(Icons.search, color: Colors.white),
            onPressed: (){
            Fluttertoast.showToast(msg: "Fitur Search", toastLength: Toast.LENGTH_SHORT,
             bgcolor: "e74c3c",
              textcolor: '#ffffff'
            );
          },
           )
         ],
       ),

       bottomNavigationBar: BottomNavigationBar(
         currentIndex: 0,

         items: [
           BottomNavigationBarItem(icon: new Icon(Icons.home),
           title: new Text('Home'),
          ),   
           BottomNavigationBarItem(icon: new Icon(Icons.mail),
           title: new Text('Message'),
          ),  
           BottomNavigationBarItem(icon: new Icon(Icons.person),
           title: new Text('Profile'),
          ),    
         ],
       ),
       body: new Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[

           //widget pertama
           new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new Icon(Icons.apps, color:Colors.green[900],size: 40.0,),
               new Text('Aplikasi')
             ],
           ),

          //widget kedua
           new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new Icon(Icons.add_a_photo, color:Colors.green[900],size: 40.0,),
               new Text('Photo')
             ],
           ),

           //widget ketiga
           new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new Icon(Icons.access_alarms, color:Colors.green[900],size: 40.0,),
               new Text('Alarm')
             ],
           ),
         ],

        //  child: new Row(
        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //    children: <Widget>[
        //      new Icon(Icons.apps, color: Colors.green[900],size: 40.0),
        //      new Text('Widget, Column and Row')
        //    ],
        //  ),
        //  child: new Column(
        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //    children: <Widget>[
        //      new Text('Joko Sarjono S', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        //      new Text('Test 1', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        //      new Text('Test 2', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        //    ],
        //  )
        //  new Row(
        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //    children: <Widget>[
        //      new Icon(Icons.add_a_photo, color: Colors.green[900],size: 40.0),
        //      new Icon(Icons.dashboard, color: Colors.green[900],size: 40.0,),
        //      new Icon(Icons.access_alarms, color: Colors.green[900],size:40.0)
        //    ],
        //  )
        //  new Text('Hello World',
        //  style: new TextStyle(
        //    fontSize: 20.0,
        //    fontWeight: FontWeight.bold,
        //    fontStyle: FontStyle.italic,
        //    color: Colors.red[900]         
          ),
        );

    //  ),
    // );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //TODO: implement build
    return Scaffold(appBar: AppBar(
      title: Text('Second Screen'),
    ),

    body: Center(
      child: RaisedButton(onPressed: (){
        Navigator.pop(context);
      },
      child: Text('Go Back'),
      ),
      ),
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
  _MyHomePageState createState() => new _MyHomePageState();
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
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

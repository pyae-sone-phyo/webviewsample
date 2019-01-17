import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  
    @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    routes: {

      '/widget':(_)=>new WebviewScaffold(
          url: 'http://www.yangon.gov.mm',
        appBar: new AppBar(
          title: Text('Webveiw'),
        ),
        withZoom: false,
        withLocalStorage: true,
        

      ),
    },
    );
  }
}

class MyHomePage extends StatefulWidget{

  _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{


  void _opennewpage(){
    Navigator.of(context).pushNamed('/widget');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: Text('Open Link'),
            onPressed: (){
          _opennewpage();
        }),
      ),
    );
  }
}


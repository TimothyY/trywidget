import 'package:flutter/material.dart';
import 'package:trywidget/login_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
        title: Text(widget.title+"string apa aja"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(paramTitle: "kirim judul",)),);},
                child: const Text('Tap here to go into login page',)),
            SizedBox(height: 20,),
            Stack(
              children: [
                Image.network(
                  "https://is2-ssl.mzstatic.com/image/thumb/Video122/v4/2d/1f/3f/2d1f3f7f-e11b-4f1c-3a82-e3ae35b16ef5/pr_source.jpg/100x100bb.jpg",
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  color: Color.fromARGB(160,0,0,0),
                  child: Text("ini contoh stack", style: TextStyle(color: Colors.white),),)
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ini header Drawer"),
          Text("ini child Drawer1"),
          Text("ini child Drawer2"),
        ],
      ),),
    );
  }
}
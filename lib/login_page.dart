import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trywidget/song.dart';
import 'package:trywidget/songs_page.dart';

class LoginPage extends StatefulWidget{

  final String? paramTitle;

  LoginPage({Key? key, required this.paramTitle}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }

}

class LoginPageState extends State<LoginPage>{

  bool _passwordVisible=false;
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.paramTitle!),),
      body: Column(
        children: [
          //username
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.phone,
                controller: usernameController,
                decoration: InputDecoration(labelText:"username here")),
          ),
          //userpass
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                controller: passController,
                obscureText: _passwordVisible?false:true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:"password here",
                    suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            if(_passwordVisible==true){_passwordVisible=false;}
                            else{_passwordVisible=true;}
                          });},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // _passwordVisible?Text("hide"):Text("show"),
                            _passwordVisible?
                            Icon(Icons.visibility_off, color: Colors.blue,):
                            Icon(Icons.visibility, color: Colors.blue,),
                          ],
                        ))
                )
            ),
          ),
          //buttonlogin
          buildLoginButton(),
          buildBackButton(),
      ],
      ),
    );
  }

  Widget buildLoginButton(){
    return  Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: ElevatedButton(
        onPressed:(){

          if(usernameController.text.compareTo("a")==0 && passController.text.compareTo("a")==0){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SongsPage()),);
          }else{
            showDialog(context: context, builder: (BuildContext context) {
              return AlertDialog(content: Text("This is a sample of validation.\nTo continue, username: a, password: a"),
                actions: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text("Ok"))
                ],);
            },);
          }
        },
        child: Row(
          children: [
            Expanded(child: Container()),
            FaIcon(FontAwesomeIcons.gamepad), //sample of using fa lib
            SizedBox(width: 20,),
            Text("Login"),
            Expanded(child: Container(),),
          ],
        ),
      ),
    );
  }

  Widget buildBackButton(){
    return  Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: ElevatedButton(
        onPressed:(){
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Expanded(child: Container()),
            FaIcon(FontAwesomeIcons.exclamation), //sample of using fa lib
            SizedBox(width: 20,),
            Text("Back"),
            Expanded(child: Container(),),
          ],
        ),
      ),
    );
  }
}
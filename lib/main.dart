import 'dart:html';
import 'dart:ui';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:login_page/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'page.dart';


void main() => runApp(MyApp());

TextEditingController controller = TextEditingController();

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: firstpage(),
    ) ;
  }

}

class firstpage extends StatefulWidget{
  const firstpage({Key?key}):super(key:key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<firstpage>
{ final _formKey = GlobalKey<FormState>();
@override
Widget build(BuildContext context){
  return Scaffold(backgroundColor:Color.fromRGBO(255,243,230,1),
    body: SafeArea(
      child: Form(
        key: _formKey,
        child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "images/bg.jpg"),
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  ),
                ),

                child: Column(
                  children:<Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children:<Widget>[

                        SizedBox(
                          height:100,
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:<Widget>[
                            Container(
                              child: Text('Welcome!',
                                style:TextStyle(
                                  fontSize:36,
                                  color:Colors.black,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:100,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Sign in using\n',
                                style:TextStyle(
                                  fontSize:20,
                                  color:Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:<Widget>[
                            Container(
                              child:InkWell(
                                child:Image.asset(
                                  'images/ggl.jpg',
                                  height:40,
                                  width:40,
                                ),
                                onTap:()=>launch(
                                    'https://accounts.google.com/signin/v2/identifier?service=CPanel&flowName=GlifWebSignIn&flowEntry=ServiceLogin'),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                              child:InkWell(
                                child:Image.asset(
                                  'images/fb.png',
                                  height:40,
                                  width:40,
                                ),
                                onTap:()=>launch(
                                    'https://www.facebook.com/'),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                              child:InkWell(
                                  child:Image.asset(
                                    'images/tt.png',
                                    height:40,
                                    width:40,
                                  ),
                                  onTap:()=>launch('https://twitter.com/i/flow/login')
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:50,),
                      ],
                    ),

                    SizedBox(width:10,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'or',
                            style:TextStyle(
                              fontSize:15,
                              color:Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:60,
                      width:30,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: TextFormField(
                        controller: controller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          errorText: 'Required*',
                          hintText: "Email",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                        ),
                        validator: (email) =>
                        email != null && !EmailValidator.validate(email)?
                        "Enter correct email" : null,
                      ),
                    ),

                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          errorText: 'Required*',
                          hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.blue)),
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height:65,
                      width: 5,),

                    Container(
                      margin: EdgeInsets.only(left: 290),
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {

                          });
                          if (_formKey.currentState!.validate()) {
                            final email = controller.text;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => newPage()));
                          }
                        },
                        color: Colors.black,
                        child: Text('Login', style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                    SizedBox(height: 60,)
                  ],
                ),
              ),
            ]),),
    ),
  );
}
}


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Color.fromARGB(6, 78, 50, 144),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            errorBorder: OutlineInputBorder(),
            hintStyle: TextStyle(color: Color.fromARGB(0, 250, 0, 0))),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 236, 225, 221)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      ),
      
      body: SafeArea(
        child: Center(
        
            child: SingleChildScrollView(
              
          physics: BouncingScrollPhysics(),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Column(
               children: [
                Image(image:AssetImage("assets/logo/refero.jpg")),
                
              //aks
                 
                 Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 51,
                  width: 185,
                  child: TextButton(
                    
                    style: Theme.of(context).textButtonTheme.style!.copyWith(
                      backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 109, 207, 254))
                      
                    ),
                    onPressed: null,
                    child: Text("با گوگل وارد شوید"),
                    
                   
                    
                    
                  ),
                  
                ),
                
              ]
              
              ),
              
                  SizedBox(height: 15),
                //Image.asset("assets/icon/icons8-next-16.png"),
],
                
                
              ),
              
              Form(
                 
                  child: Column(
                children: [
                  
                  TextFormField(
                  
                    decoration: InputDecoration(labelText: "ایمیل"),
                    
                  ),
                  
                  SizedBox(height: 15),
                
                 TextFormField(
                  
                    decoration: InputDecoration(labelText: "نام کاربری"),
                    
                  ),
                  
                  SizedBox(height: 15),
                  TextField(
                    
                    decoration: InputDecoration(labelText: "رمز عبور"),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                  
                    decoration: InputDecoration(labelText: "تکرار رمز عبور"),
                    
                  ),
                  
                  SizedBox(height: 15),
                ],
              )),
              
              
              
              Container(
                 height: 51,
                  width: 247,
                  
                child: ElevatedButton(onPressed: () {},
                child: Text('ورود'),),
              ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("حساب کاربری ندارید",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Text('ثبت مام',style: TextStyle(color: Color.fromARGB(256,0 ,0 ,255)),),
                    ),
                      ElevatedButton(
                       onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                     },
                       child: Text('ثبت نام'),
                    )
                  ],
                )
            ],
          ),
        )),
      ),
    );
  }
}

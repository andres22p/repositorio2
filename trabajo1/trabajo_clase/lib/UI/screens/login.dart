import 'package:flutter/material.dart';
import 'package: flutter_application_social/USER/UI/widget/textInput.dart';
import 'package: flutter_application_social/USER/UI/widget/googlebotton.dart';
import 'package: flutter_application_social/USER/UI/bloc/bloc1.dart';
import 'package: generic_bloc_provider/generic_blog_provider.dart';
import: 'package:firebase_auth/firebase_auth.dart';
class Login extends StatelessWidget {
  late BlocUser bloc1;
  final _controllerUsername= TextEditingController();
  final _controllerUsername= TextEditingController();
  @override
  Widget build(BuildContext context) {
    bloc1= BlocProvider.of(context);
    
      return Scaffold(
        
        body: Container(
          
          child: ListView(children:<Widget>[
            Container(
              height: 250.0;
              width: 250.0;
              margin: EdgeInsets.only(top:15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/img/logo-web.png"),

                
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,

              ),
            ),
            Container(height:40.0,
            margin: EdgeInsets.only(top:15.0),
            child: Text("nombre aplicacion",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),),
            Container(margin: EdgeInsets.only(top:15.0),
            child: TextInput(hintText: "username", inputType: TextInputType.name,controller:
            _controllerUsername,maxLines: 1)
            ),
            Container(margin: EdgeInsets.only(top:15.0),
            child: TextInput(hintText:"password",inputType: TextInputType.text,
            controller: _controllerHobbies)),
            Container(
              child:Center(child: MaterialButton(minWidth: 100.0,height: 40.0,inPressed:(){},
              color: Colors.lightBlue),
              child: Text('Sumit',style: TextStyle(color: Colors.white)
              ),),),

            ),
            GoogleButton(text: "login with  gmail", onPressed:(){
              blocUser.singIn().then((UserCredential user)=>print("Usted se a autenticado como ${user.user}"));
            },
             heightC:20, widthC:30, )
          ],
          ]
            
      
    );
  }
}
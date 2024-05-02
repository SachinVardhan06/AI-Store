import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gemini_ai/firebase_auth_imp/firebase_auth_services.dart';
import 'package:gemini_ai/list.dart';
import 'package:gemini_ai/login.dart';

class signuppage extends StatefulWidget {
  const signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network("https://assets-global.website-files.com/61406347b8db463e379e2732/62b4d1492452cfa23411b455_fkkrsNIBqUeNrC1Gu25iqCGogQnbVSUbOKJTFQdMUbQsMafFYPCvxrgy5R7AXTjoWPwUMPD4Jw6l10aQPdLHlQp8KcZdbjh7I9QBDXsU2-SFK4m0X1K4aOVBtIWONpdUiKWVLmk.png",width: size.width*0.3,height: size.height*0.3,),
              Text("Welcome",style: Theme.of(context).textTheme.headline1),
              Text("The Future AI",style: Theme.of(context).textTheme.bodyText1),
              Form(child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Name",
                          hintText: "Enter UserName",
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Email",
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          labelText: "Password",
                          hintText: "Enter Your Password",
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          )
                      ),
                    ),
                    SizedBox(height: 40,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _signup, child: Text("Sign Up"),)
                    ),
                    SizedBox(height: 30,),
                    TextButton(onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage(),),);}
                        ,child: Text.rich
                      (
                        TextSpan(
                            text: ""
                                "Already have an account? ",
                            style: Theme.of(context).textTheme.bodyText1,
                            children: const [
                              TextSpan(
                                  text: "Login",
                                  style: TextStyle(color: Colors.blue)

                              )
                            ]
                        )
                    ))
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );;
  }

  void _signup() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signupwithemailandpass(email, password);

    if(user != null){
      print("User is success");
      Navigator.pushNamed(context, "/homepage1");
    }
    else{
      print("Error");
    }
  }
}

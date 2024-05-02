import 'package:flutter/material.dart';
import 'package:gemini_ai/LoginScreens/signupscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network("https://assets-global.website-files.com/61406347b8db463e379e2732/62b4d1492452cfa23411b455_fkkrsNIBqUeNrC1Gu25iqCGogQnbVSUbOKJTFQdMUbQsMafFYPCvxrgy5R7AXTjoWPwUMPD4Jw6l10aQPdLHlQp8KcZdbjh7I9QBDXsU2-SFK4m0X1K4aOVBtIWONpdUiKWVLmk.png",width: size.width*0.3,height: size.height*0.3,),
              Text("Welcome Back",style: Theme.of(context).textTheme.headline1),
              Text("The Future of AI",style: Theme.of(context).textTheme.bodyText1),
              Form(child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Email",
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder()
                        ),
                      ),
                    SizedBox(height: 10,),
                    TextFormField(
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
                            onPressed: (){}, child: Text("LOGIN"),)
                    ),
                    SizedBox(height: 30,),
                    TextButton(onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signuppage(),),);}, child: Text.rich
                      (
                      TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context).textTheme.bodyText1,
                        children: const [
                          TextSpan(
                              text: "Signup",
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
    );
  }
}

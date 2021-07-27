import 'package:flutter/material.dart';
import 'package:rider_app/AllScreen/loginScreen.dart';

class RegistrationScreen extends StatelessWidget {
  static const String idScreen = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 45.0),
              Image(
                image: AssetImage('images/logo.png'),
                width: 350.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(height: 1.0),
              Text(
                'Register as a Rider',
                style: TextStyle(fontSize: 24.0, fontFamily: 'Brand Bold'),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 1.0),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 1.0),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 1.0),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 1.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow),
                      ),
                      onPressed: () {
                        print('Login Button Clicked');
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: "Brand-Bold",
                            color: Colors.blue),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, LoginScreen.idScreen, (route) => false);
                      },
                      child: Text('Already have an account? Login Here'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

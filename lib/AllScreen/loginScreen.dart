import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
              'Login as Rider',
              style: TextStyle(fontSize: 24.0, fontFamily: 'Brand Bold'),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 1.0),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 14.0),
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 10.0),
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  SizedBox(height: 1.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 14.0),
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 10.0),
                    ),
                    style: TextStyle(fontSize: 14.0),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      foregroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      print('Login');
                    },
                    child: Text(
                      'Login Button Clicked',
                      style:
                          TextStyle(fontSize: 10.0, fontFamily: "Brand-Bold"),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                print('clicked');
              },
              child: Text('Do not have an Account? Register Here'),
            ),
          ],
        ),
      ),
    );
  }
}

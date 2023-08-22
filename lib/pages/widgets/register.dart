

import 'package:flutter/material.dart';
import '/pages/login_page.dart';
import '/components/my_button.dart';
import '/components/my_textfield.dart';
import '/pages/Home_Page.dart';
import '/components/Square_tile.dart';

class Register_Page extends StatefulWidget {
       Register_Page({super.key});


  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  // text editing controllers
   final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
   final  int userid = 0000;
  // sign user in method
  void signUserUp() {}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'MemDi',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                'Welcome, Signup Here',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),


              const SizedBox(height: 50),




              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,


              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: emailController,
                hintText: 'Enter Email',
                obscureText: true,
              ),




              const SizedBox(height: 25),

              // sign in button
              MyButton(onTap:()
              {
                signUserUp();
                Navigator.push(context, MaterialPageRoute( builder :(context)=>HomePage()));
              }
              ),
              const SizedBox(height: 40),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'assets/images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'assets/images//apple.png')
                ],
              ),

              const SizedBox(height: 40),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  TextButton(onPressed :()
                  { Navigator.pushNamed(context , 'login');},
                      child: Text('Login')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

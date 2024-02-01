import 'package:flutter/material.dart';
import 'package:movie_app/presentation/home_page.dart';
import 'package:movie_app/presentation/splash_screen.dart';

import 'custom_snackbar.dart';

class SignInPage extends StatefulWidget {
SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        body: Stack(
          children: [
            Image.asset('assets/images/Alone-in-Berlin-2017-movie-poster.jpg'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 60),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context , MaterialPageRoute(builder: ( (context) => SplashScreen() )));
                    },
                    child: Image.asset('assets/images/arrow.png')),
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text('Sign In' , style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Secular One',
                  ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onChanged: (value) {
                      email = value;
              },
                    decoration: InputDecoration(
                      label: Text('Email' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                      hintText: 'e.g. example@mail.com',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(63, 30, 136, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                      onChanged: (value) {
                        password = value;
              },
                    decoration: InputDecoration(
                      label: Text('Password' , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      ),
                      hintText: 'e.g. Examp!e2006',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(63, 30, 136, 1)),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/images/visible.png'),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 302,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(137, 42, 236, 1),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(137, 42, 236, 1)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: ()async {
                        if(formKey.currentState!.validate()) {
                          isLoading = true;

                          setState((){});
                          try {
                            await loginUser();
                            ShowSnackBar(context, 'Login Successfully');
                            // Navigator.push(context, MaterialPageRoute(builder: ( (context) => HomePage() )));

                          } on FirebaseException catch(ex){
                            if(ex == 'User not found'){
                              ShowSnackBar(context, 'No user found to that email');
                            }else if(ex == 'Wrong password'){
                              ShowSnackBar(context, 'Wrong password for that user');
                            }
                          }
                          isLoading = false;
                          setState(() {});
                          
                        }else{}
                        
                      } , child: Text('Login' , style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),),
                      
                    ),
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Future<void> loginUser() async {
  var FirebaseAuth;
  UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email! , password: password!);
}

mixin UserCredential {
}

GlobalKey<FormState> formKey = GlobalKey();
String? email;
String? password;
bool isLoading = false;